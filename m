Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F86608DBF
	for <lists.bridge@lfdr.de>; Sat, 22 Oct 2022 16:50:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC726408F7;
	Sat, 22 Oct 2022 14:50:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC726408F7
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=YsopUazC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HviXCBzCL59R; Sat, 22 Oct 2022 14:50:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id A31D740920;
	Sat, 22 Oct 2022 14:50:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A31D740920
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 365FAC007C;
	Sat, 22 Oct 2022 14:50:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 19787C002D
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 14:50:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA8C840145
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 14:49:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA8C840145
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=YsopUazC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yrTCcj5YPruw for <bridge@lists.linux-foundation.org>;
 Sat, 22 Oct 2022 14:49:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44528400EA
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44528400EA
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 14:49:58 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id e18so16004609edj.3
 for <bridge@lists.linux-foundation.org>; Sat, 22 Oct 2022 07:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=FXANfOozsR8ZWtJEknyWv/BQc+quoG2zfT6HYPTQF5o=;
 b=YsopUazClirccbXPzAAfSeCAEE5h62Jqu8W0jsjUhsLNTN4dTn2w3UC1YFTUZuuPsa
 gHYXm/WHBKBdbp/XSQlQEaSuIWH1HNSAJXf89FQlBbUHnaNSXBszl/t4S7BjnH7NIp5M
 SXjEuGavThZDBG4/N61IpZztZU3VbzNQGVDaMHz3xX/N6e2q8JMQSWq1C7NDLPWw3Qqg
 O8l2UrYfhr3z9jAF9gEItJkagPBvjQUHHyOdgQ+P8zJJbXwWqFCWEnh59t8KavBc6QWQ
 INpXNlK29ET+d6gO6F8VCgKinp7DkXi+bsnDX2sZxrwNnX9V964X/O34lX+1e7IQkchk
 uuFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FXANfOozsR8ZWtJEknyWv/BQc+quoG2zfT6HYPTQF5o=;
 b=2ljWzTaq61OouJ2M31uttHImO5fG/bqYBMxrAS6dGhAo3hBStDM1FotdtnVAwo4E2B
 YU5Ap+Lx4yfh56zRts6IyelGgWBluGwfjDqbtCtI3Ln2ggCuEzuhxdl12i9ZyETSqO/E
 dKkJdY5CD7ML24TozfJ78xN2WG+2vV541KwALaxeluwnPYglsWOhFFo8q8hxTDSpZSvw
 qEyHkrdofat1HMlUXNkCnyUbiiRbJA0C0Sc9A9Sxy4Du5ifq/8Af1PIsNJW9B3WArFYA
 n2JhQpn6xZOdxl2bmcAv40hyUnYoDPY8lpKdjFWyHRoVtRAEodyZJMpC4MreQ/so3t7+
 S20Q==
X-Gm-Message-State: ACrzQf0n58VEfYlF7ScnME0y5TO86YXiGtrRdAHMugNJOPT3iFeMnE6w
 JoD6zEixmN/rlJWbA/LS7Ik=
X-Google-Smtp-Source: AMsMyM4r60hxK1s59BiS5G0AlmT5m7tS1FwRfTCOCXlg6bUPLgP+Hx9y5QBGUNw+ku2VFA6Qeh7sAA==
X-Received: by 2002:a17:907:7d8b:b0:78e:2534:4fd3 with SMTP id
 oz11-20020a1709077d8b00b0078e25344fd3mr20714928ejc.141.1666450195961; 
 Sat, 22 Oct 2022 07:49:55 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 y16-20020a056402171000b0044e937ddcabsm217699edu.77.2022.10.22.07.49.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Oct 2022 07:49:55 -0700 (PDT)
Date: Sat, 22 Oct 2022 17:49:51 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20221022144951.v2twgp2lcnhnbhrv@skbuf>
References: <20221020225719.l5iw6vndmm7gvjo3@skbuf>
 <82d23b100b8d2c9e4647b8a134d5cbbf@kapio-technology.com>
 <20221021112216.6bw6sjrieh2znlti@skbuf>
 <7bfaae46b1913fe81654a4cd257d98b1@kapio-technology.com>
 <20221021163005.xljk2j3fkikr6uge@skbuf>
 <d1fb07de4b55d64f98425fe66156c4e4@kapio-technology.com>
 <20221021173014.oit3qmpkrsjwzbgu@skbuf>
 <b88e331e016ad3801f1bf1a0dec507f3@kapio-technology.com>
 <20221021181411.sv52q4yxr5r7urab@skbuf> <Y1P0/gYdvrk+W866@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1P0/gYdvrk+W866@shredder>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, netdev@kapio-technology.com,
 Joachim Wiberg <troglobit@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>,
 Oleksandr Mazur <oleksandr.mazur@plvision.eu>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yuwei Wang <wangyuweihx@gmail.com>, Petr Machata <petrm@nvidia.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 10/12] net: dsa: mv88e6xxx:
 mac-auth/MAB implementation
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Sat, Oct 22, 2022 at 04:49:50PM +0300, Ido Schimmel wrote:
> I will try to summarize what I learned from past discussions because I
> think it is not properly explained in the commit messages.
> 
> If you look at the hostapd fork by Westermo [1], you will see that they
> are authorizing hosts by adding dynamic FDB entries from user space, not
> static ones. Someone from Westermo will need to confirm this, but I
> guess the reasons are that a) They want hosts that became silent to lose
> their authentication after the aging time b) They want hosts to lose
> their authentication when the carrier of the bridge port goes down. This
> will cause the bridge driver to flush dynamic FDB entries, but not
> static ones. Otherwise, an attacker with physical access to the switch
> and knowledge of the MAC address of the authenticated host can connect a
> different (malicious) host that will be able to communicate through the
> bridge.

Not only is it not well explained, but Hans said back in February that
"in the common case you will want to use static entries":
https://lore.kernel.org/lkml/867da5viak.fsf@gmail.com/

> 
> In the above scenario, learning does not need to be on for the bridge to
> populate its FDB, but rather for the bridge to refresh the dynamic FDB
> entries installed by hostapd. This seems like a valid use case and one
> needs a good reason to break it in future kernels.

Before suggesting any alternatives, I'd like to know more details about
how this will work in practice, because I'm aware of the limitations
that come with DSA not syncing its hardware FDB with the software bridge.

So you add a dynamic FDB entry from user space, it gets propagated to
hardware via SWITCHDEV_FDB_ADD_TO_DEVICE, and from there on, they have
completely independent ageing timers.

You'll still suffer interruptions in authorization, if the software FDB
entry expires because it was never refreshed (which will happen if
traffic is forwarded autonomously and not seen by software). And at this
stage, you could just add static FDB entries which you periodically
delete from user space, since the effect would be equivalent.

If the mitigation to that is going to involve the extern_learn flag, the
whole point becomes moot (for mv88e6xxx), since FDB refreshing does not
happen in the bridge driver in that case (so the learning flag can be
whatever).

> 
> Regarding learning from link-local frames, this can be mitigated by [2]
> without adding additional checks in the bridge. I don't know why this
> bridge option was originally added, but if it wasn't for this use case,
> then now it has another use case.

There is still the problem that link-local learning is on by default
(follows the BR_LEARNING setting of the port). I don't feel exactly
comfortable with the fact that it's easy for a user to miss this and
leave the port completely insecure.

> 
> Regarding MAB, from the above you can see that a pure 802.1X
> implementation that does not involve MAB can benefit from locked bridge
> ports with learning enabled. It is therefore not accurate to say that
> one wants MAB merely by enabling learning on a locked port. Given that
> MAB is a proprietary extension and much less secure than 802.1X, we can
> assume that there will be deployments out there that do not use MAB and
> do not care about notifications regarding locked FDB entries. I
> therefore think that MAB needs to be enabled by a separate bridge port
> flag that is rejected unless the bridge port is locked and has learning
> enabled.

I had missed the detail that dynamic FDB entries will be refreshed only
with "learning" on. It makes the picture more complete. Only this is
said in "man bridge":

       learning on or learning off
              Controls whether a given port will learn MAC addresses
              from received traffic or not. If learning if off, the
              bridge will end up flooding any traffic for which it has
              no FDB entry. By default this flag is on.

Can live with MAB being a separate flag if it comes to that, as long as
'learning' will continue to have its own specific meaning, independent
of it (right now that meaning is subtle and undocumented, but makes sense).

> Regarding hardware offload, I have an idea (needs testing) on how to
> make mlxsw work in a similar way to mv88e6xxx. That is, does not involve
> injecting frames that incurred a miss to the Rx path. If you guys want,
> I'm willing to take a subset of the patches here, improve the commit
> message, do some small changes and submit them along with an mlxsw
> implementation. My intention is not to discredit anyone (I will keep the
> original authorship), but to help push this forward and give another
> example of hardware offload.
> 
> [1] https://github.com/westermo/hostapd/commit/10c584b875a63a9e58b0ad39835282545351c30e#diff-338b6fad34b4bdb015d7d96930974bd96796b754257473b6c91527789656d6ed
> [2] https://git.kernel.org/pub/scm/network/iproute2/iproute2-next.git/commit/?id=c74a8bc9cf5d6b6c9d8c64d5a80c5740165f315a

I think it would be very nice if you could do that. As a middle ground
between mv88e6xxx and mlxsw, I can also try to build a setup on ocelot
(which should trap frames with MAC SA misses in a similar way to mlxsw,
but does also not sync its FDB with the bridge, similar to the mv88e6xxx.
Not sure what to do with dynamic FDB entries).

If only I would figure out how to configure that hostapd fork (something
which I never did before).

Hans, would it be possible to lay out some usage instructions for this fork?
