Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6320607E25
	for <lists.bridge@lfdr.de>; Fri, 21 Oct 2022 20:14:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A701C83FBC;
	Fri, 21 Oct 2022 18:14:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A701C83FBC
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=P9hSCaa3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oEBpGs9eA_4l; Fri, 21 Oct 2022 18:14:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id F41BB83FE6;
	Fri, 21 Oct 2022 18:14:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F41BB83FE6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7D582C007C;
	Fri, 21 Oct 2022 18:14:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BD74CC002D
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 18:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9205E83FC2
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 18:14:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9205E83FC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nM5GcWShpGxP for <bridge@lists.linux-foundation.org>;
 Fri, 21 Oct 2022 18:14:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5010883FBC
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5010883FBC
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 18:14:18 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id r14so8916711edc.7
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 11:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=IWT32hn/5on9JQFLZ9CdZqyFkNpfjrGX5X1sBaET02U=;
 b=P9hSCaa39i9JGj/5fhpGAGKqV0qNaEhqet8DmdqurbIDP+fWwaBweSZJ3/S6bAi2DE
 p+eq7oKJ/RDCYh9wf+nabFJSnwsdceArXMizkG598uRi7agL1PsnxpKJR3QOGe9LGUsr
 zmlp8/3/NqI+V1i2nDa+LoUbsVbsT7TecGgNHY9btlLCVLiBhuGwippKH5FV3uy6EKQf
 py5P3IgoKNZRscRUy9euAQkfpmI26lMxdGlz6ZIjmzgrS22NPAK4YVPfYhIgDowxprq/
 ViQgGv3cTTio2/IhXMiDB1cCyYpWLgr0OA+yXjiHyGL9TQD3FZitvAZZYL5w3Dv4WD/K
 D/1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IWT32hn/5on9JQFLZ9CdZqyFkNpfjrGX5X1sBaET02U=;
 b=xks2yopXqC+ICqAC4oXhi5hdIa4s1irlY7c4PTT11hA2tsvDKs3XDxSMkjqRi5xbtH
 UMP0KMCkvr3ky6Gv8OafxHedOtmI2meU99DHpEOfPVHxImeIgtA6LKwNPRriwYBYPpke
 8ZcYzHeb/83VzoP/TXyyaNRq3SbGVRHHnNZOUWaEaAH8TGAAHlNImuatF04FmWbR2e4x
 5go0TcoWIwEMS8qzJ8glX7IpmigdQlED9Nu4/GPUyiHMquarSd9cWQtG9btFogCwdlgk
 2DABS5Yp2ITN/w13+3Ih3CJtLBux8fGM2hHTnLb4QwzSXxTT0mesWJ8j7/op00uOXucg
 1UpA==
X-Gm-Message-State: ACrzQf2wWDErycuEBxNbKv03IKgj9Z4xo+7g1s6LMl+vasUmmo9ODbMH
 LtxnjU0Ee7AEqR2RR1yiWuk=
X-Google-Smtp-Source: AMsMyM7EHFMooNaoQGzQ5R9JFO+S5r0igTZjt4d8ThXihB+ZZ0Av9ErxITHmAdRMMZTwcRJFugdAAw==
X-Received: by 2002:a17:907:b05:b0:78d:9bc9:b96f with SMTP id
 h5-20020a1709070b0500b0078d9bc9b96fmr16306095ejl.468.1666376056317; 
 Fri, 21 Oct 2022 11:14:16 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 kw15-20020a170907770f00b00741383c1c5bsm11797572ejc.196.2022.10.21.11.14.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Oct 2022 11:14:15 -0700 (PDT)
Date: Fri, 21 Oct 2022 21:14:11 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20221021181411.sv52q4yxr5r7urab@skbuf>
References: <20221020132538.reirrskemcjwih2m@skbuf>
 <2565c09bb95d69142522c3c3bcaa599e@kapio-technology.com>
 <20221020225719.l5iw6vndmm7gvjo3@skbuf>
 <82d23b100b8d2c9e4647b8a134d5cbbf@kapio-technology.com>
 <20221021112216.6bw6sjrieh2znlti@skbuf>
 <7bfaae46b1913fe81654a4cd257d98b1@kapio-technology.com>
 <20221021163005.xljk2j3fkikr6uge@skbuf>
 <d1fb07de4b55d64f98425fe66156c4e4@kapio-technology.com>
 <20221021173014.oit3qmpkrsjwzbgu@skbuf>
 <b88e331e016ad3801f1bf1a0dec507f3@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b88e331e016ad3801f1bf1a0dec507f3@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
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
 Florent Fourcot <florent.fourcot@wifirst.fr>, UNGLinuxDriver@microchip.com,
 davem@davemloft.net
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

On Fri, Oct 21, 2022 at 07:39:34PM +0200, netdev@kapio-technology.com wrote:
> Well, with this change, to have MAB working, the bridge would need learning on
> of course, but how things work with the bridge according to the flags, they
> should also work in the offloaded case if you ask me. There should be no
> difference between the two, thus MAB in drivers would have to be with
> learning on.

Am I proposing for things to work differently in the offload and
software case, and not realizing it? :-/

The essence of my proposal was to send a bug fix now which denies
BR_LEARNING to be set together with BR_PORT_LOCKED. The fact that
link-local traffic is learned by the software bridge is something
unintended as far as I understand.

You tried to fix it here, and as far as I could search in my inbox, that
didn't go anywhere:
https://lore.kernel.org/netdev/47d8d747-54ef-df52-3b9c-acb9a77fa14a@blackwall.org/T/#u

I thought only mv88e6xxx offloads BR_PORT_LOCKED, but now, after
searching, I also see prestera has support for it, so let me add
Oleksandr Mazur to the discussion as well. I wonder how they deal with
this? Has somebody come to rely on learning being enabled on a locked
port?


MAB in offloading drivers will have to be with learning on (same as in
software). When BR_PORT_LOCKED | BR_LEARNING will be allowed together
back in net-next (to denote the MAB configuration), offloading drivers
(mv88e6xxx and prestera) will be patched to reject them. They will only
accept the two together when they implement MAB support.

Future drivers after this mess has been cleaned up will have to look at
the BR_PORT_LOCKED and BR_LEARNING flag in combination, to see which
kind of learning is desired on a port (secure, CPU based learning or
autonomous learning).

Am I not making sense?
