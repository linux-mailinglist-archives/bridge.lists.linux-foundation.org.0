Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099314E9AC0
	for <lists.bridge@lfdr.de>; Mon, 28 Mar 2022 17:13:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 58B684056C;
	Mon, 28 Mar 2022 15:12:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a2dTP4_97MqT; Mon, 28 Mar 2022 15:12:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 51A5F4042B;
	Mon, 28 Mar 2022 15:12:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0D337C0082;
	Mon, 28 Mar 2022 15:12:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 36453C0012
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 15:12:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2CB5160ACE
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 15:12:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QBs_fjbp5fZE for <bridge@lists.linux-foundation.org>;
 Mon, 28 Mar 2022 15:12:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B9D7360ACA
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 15:12:51 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id bi12so29408625ejb.3
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 08:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=8j5QTAZfLhwmkKFIt9nilSI/3dPPPzi4f58TnsoEgH8=;
 b=ealUty7SO2YHat48Wm0vOdR5RY6b0HiVR7jHHq4iBQQaNKsQTtA4vPGJ5uiWtqs2If
 yzDF3I6kdy3oTdpQGXIkUVfr0PgXbigd2ujGC87qw6gPuiAyRYFuL3JJPAV6wcILXLZ1
 xCkH+DtVJwDLGeDAFHev9lUp1BL7McWCvgh6PJpi/L0ZAEE4YJGcc6j6AiVOczLMwVC6
 5rZS7mSzEUGPMSo6CrMK8mMTj1v4MzwdtpDBHxubyIgfEMms5epwnzaoudrkL3aCCD+s
 B9uSyrwZwthd7ysvD/pVUucT2EdUVVEl8K+9AgMCpEgE6c0MYUpZOLxVT4IOPMpQhk42
 UoVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=8j5QTAZfLhwmkKFIt9nilSI/3dPPPzi4f58TnsoEgH8=;
 b=j8AnIMvrVTMfFuFgFQb5ptuTeCT1kFjaopNyBpH9ccrU7SqKllBPd33eV7kHgmZ7eH
 IaUTRFaGgHWBmbk6ldmGUnE7vWTHv2neTixZbPRhCYk1Qe0qfcc2oo7+DZaq7ZPDDPsJ
 gw9SRaENdxRs0Zfko1G/qdd8lFmdQXXHb+1qWQrdM5lGHDS3NQi1Yn9v2N2IBWriEN22
 JLm5ZxpO0nFDep/xkDfpM6tVCse7jHJShOLCOGO38gs5cM4RpZZPapQTinKN/AZ59sUv
 fyYmLrHFVH65g9rnD+UvaUk2AswzzSOTOCIRwmhZX+HNYxamPMwTky9du5eoFbBN/KXw
 Kgiw==
X-Gm-Message-State: AOAM5326v9CbTuCY2FhmKVQ45xNUqdnyRlAdZlFbZHRjzdU2Ze6oqt0Q
 HorbN4RTXg/NUNkdVk/sfA8=
X-Google-Smtp-Source: ABdhPJz6aam8vyQ9xQvfqTbz/cqdVoF1/67xHSYTTq/diC1MSZQ/h+uG6EMOYu4P0YDSO6KktLMqhA==
X-Received: by 2002:a17:907:1c9e:b0:6e0:2fed:869a with SMTP id
 nb30-20020a1709071c9e00b006e02fed869amr28390275ejc.122.1648480369669; 
 Mon, 28 Mar 2022 08:12:49 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 d1-20020a50fe81000000b004197f2ecdc2sm7100904edt.89.2022.03.28.08.12.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Mar 2022 08:12:49 -0700 (PDT)
Date: Mon, 28 Mar 2022 18:12:47 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220328151247.hgub3vuzqbrl6mis@skbuf>
References: <20220324142749.la5til4ys6zva4uf@skbuf> <86czia1ned.fsf@gmail.com>
 <20220325132102.bss26plrk4sifby2@skbuf> <86fsn6uoqz.fsf@gmail.com>
 <20220325140003.a4w4hysqbzmrcxbq@skbuf> <86tubmt408.fsf@gmail.com>
 <20220325203057.vrw5nbwqctluc6u3@skbuf> <86ee2m8r2e.fsf@gmail.com>
 <20220328084828.ergz2h64p7ugebwl@skbuf> <86h77ijudc.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <86h77ijudc.fsf@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/4] net: switchdev: add support
 for offloading of fdb locked flag
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

On Mon, Mar 28, 2022 at 11:31:43AM +0200, Hans Schultz wrote:
> On mån, mar 28, 2022 at 11:48, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Mon, Mar 28, 2022 at 09:38:33AM +0200, Hans Schultz wrote:
> >> On fre, mar 25, 2022 at 22:30, Vladimir Oltean <olteanv@gmail.com> wrote:
> >> > On Fri, Mar 25, 2022 at 05:01:59PM +0100, Hans Schultz wrote:
> >> >> > An attacker sweeping through the 2^47 source MAC address range is a
> >> >> > problem regardless of the implementations proposed so far, no?
> >> >> 
> >> >> The idea is to have a count on the number of locked entries in both the
> >> >> ATU and the FDB, so that a limit on entries can be enforced.
> >> >
> >> > I can agree with that.
> >> >
> >> > Note that as far as I understand regular 802.1X, these locked FDB
> >> > entries are just bloatware if you don't need MAC authentication bypass,
> >> > because the source port is already locked, so it drops all traffic from
> >> > an unknown MAC SA except for the link-local packets necessary to run
> >> > EAPOL, which are trapped to the CPU.
> >> 
> >> 802.1X and MAC Auth can be completely seperated by hostapd listning
> >> directly on the locked port interface before entering the bridge.
> >
> > I don't understand this, sorry. What do you mean "before entering the
> > bridge"?
> >
> RAW socket on network slave device.

But as far as the port and its driver are concerned, there is a lot of
unnecessary functionality going on in the background if you don't need
MAC authentication bypass. All non-EAPOL packets could be unauthorized
without CPU intervention by simply not enabling CPU-assisted secure
learning in the first place. You might consider cutting off some of that
overhead by making user space opt into secure learning.

> >> > So maybe user space should opt into the MAC authentication bypass
> >> > process, really, since that requires secure CPU-assisted learning, and
> >> > regular 802.1X doesn't. It's a real additional burden that shouldn't be
> >> > ignored or enabled by default.
> >> >
> >> >> > If unlimited growth of the mv88e6xxx locked ATU entry cache is a
> >> >> > concern (which it is), we could limit its size, and when we purge a
> >> >> > cached entry in software is also when we could emit a
> >> >> > SWITCHDEV_FDB_DEL_TO_BRIDGE for it, right?
> >> >> 
> >> >> I think the best would be dynamic entries in both the ATU and the FDB
> >> >> for locked entries.
> >> >
> >> > Making locked (DPV=0) ATU entries be dynamic (age out) makes sense.
> >> > Since you set the IgnoreWrongData for source ports, you suppress ATU
> >> > interrupts for this MAC SA, which in turn means that a station which is
> >> > unauthorized on port A can never redeem itself when it migrates to port B,
> >> > for which it does have an authorization, since software never receives
> >> > any notice that it has moved to a new port.
> >> >
> >> > But making the locked bridge FDB entry be dynamic, why does it matter?
> >> > I'm not seeing this through. To denote that it can migrate, or to denote
> >> > that it can age out? These locked FDB entries are 'extern_learn', so
> >> > they aren't aged out by the bridge anyway, they are aged out by whomever
> >> > added them => in our case the SWITCHDEV_FDB_DEL_TO_BRIDGE that I mentioned.
> >> >
> >> I think the FDB and the ATU should be as much in sync as possible, and
> >> the FDB definitely should not keep stale entries that only get removed
> >> by link down. The SWITCHDEV_FDB_DEL_TO_BRIDGE route would requre an
> >> interrupt when a entry ages out in the ATU, but we know that that cannot
> >> happen with DPV=0. Thus the need to add dynamic entries with
> >> SWITCHDEV_FDB_ADD_TO_BRIDGE. 
> >
> > So what is your suggestion exactly? You want the driver to notify the
> > locked FDB entry via FDB_ADD_TO_BRIDGE with the dynamic flag, and then
> > rely on the bridge's software ageing timer to delete it? How does that
> > deletion propagate back to the driver then? I'm unclear on the ownership
> > model you propose.
> >
> 
> As the FDB and the ATU will age out the entry with the same timeout,
> they will stay relatively in sync compared to the situation where the
> switchcore driver will not be able to notify the bridge that a zero DPV
> entry has aged out as it has no port association.

So if the DPV=0 ATU entry doesn't get refreshed when a packet hits it
(even to get dropped), then I suppose the drift between software and
hardware ageing timers could be kept more or less under control.

But you still need to change switchdev and the bridge driver to support
this pattern, and you need to make a compelling case for it, because the
lack of a FDB_DEL_TO_BRIDGE notifier _is_ a concern in the general case.

And if you say "well, you know, the reason why I don't need to emit the
FDB_DEL_TO_BRIDGE is because I lied about the FDB entry's port association
in the first place (during FDB_ADD_TO_BRIDGE), it really is associated
with no port rather than with the port I said, just go with it", well,
that might not be the strongest argument for a new kind of externally
learned FDB entry. Anyway I'll defer to bridge and switchdev maintainers.

> >> >> How the two are kept in sync is another question, but if there is a
> >> >> switchcore, it will be the 'master', so I don't think the bridge
> >> >> module will need to tell the switchcore to remove entries in that
> >> >> case. Or?
> >> >
> >> > The bridge will certainly not *need* to tell the switch to delete a
> >> > locked FDB entry, but it certainly *can* (and this is in fact part of
> >> > the authorization process, replace an ATU entry with DPV=0 with an ATU
> >> > entry with DPV=BIT(port)).
> >> 
> >> Yes you are right, but I was implicitly only regarding internal
> >> mechanisms in the 'bridge + switchcore', and not userspace netlink
> >> commands.
> >> >
> >> > I feel as if I'm missing the essence of your reply.
