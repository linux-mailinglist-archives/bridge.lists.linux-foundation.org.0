Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A394A4E6223
	for <lists.bridge@lfdr.de>; Thu, 24 Mar 2022 12:10:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCABB60E4A;
	Thu, 24 Mar 2022 11:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kw31QUhWsk2m; Thu, 24 Mar 2022 11:10:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6F7AE60E5D;
	Thu, 24 Mar 2022 11:10:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2F54BC0082;
	Thu, 24 Mar 2022 11:10:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 920FCC000B
 for <bridge@lists.linux-foundation.org>; Thu, 24 Mar 2022 11:10:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 74EC560E13
 for <bridge@lists.linux-foundation.org>; Thu, 24 Mar 2022 11:10:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zgA_tVSQD2wN for <bridge@lists.linux-foundation.org>;
 Thu, 24 Mar 2022 11:10:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3974D60E0B
 for <bridge@lists.linux-foundation.org>; Thu, 24 Mar 2022 11:10:03 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id g20so5188320edw.6
 for <bridge@lists.linux-foundation.org>; Thu, 24 Mar 2022 04:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KGZCltwDEuDtdVSTj/+aDb5ZKdS2bNxeO6n+gHL1s2Q=;
 b=VQmoFj/1OxbLjhEevHycJOV96wtzwVXDTG8oDW9GtUIQIVolXMvxMqn+JKbmzg8hd1
 uboUfIWYCacKNsgCMye9OjMf+c6fg4zVFW2qML6XY8eTLCyjNIj0gvrmEKN9TYH/A5Ip
 OkPKKd8oNJ+i3gIYzubWAPs/m+CWZF0zP0RqeonRNd4n7HBde2w4cJYTlHg+OxjIK1Uj
 q2kXuknsBXmmjOPwp5lH20phuj8WowouMTSzS/A3/ssA0nxWxG1x5CRwdRSqEGE5QT8o
 zAw5QnbhiMssMF5Nh7Mw31r99GtNiIpZvS3R8WVXV+btUgxowO/mki0j/TQbiMuqfx1f
 MwcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KGZCltwDEuDtdVSTj/+aDb5ZKdS2bNxeO6n+gHL1s2Q=;
 b=iruQmWY8oHYIhO+ahC3UBumFaEnRGm49foxqdeE4p3exe/Q2CQmGpeRSkRzDp788r7
 6teeHwZt1A4CXhJ7Zuqgc9MhHnf157pXJW5AyQpdQH54NA+OPoDxxYHfFssh1jvvERj+
 T3CkUjhzoOn3ycVktVVKRpRVrrl1wV7LHZoDXp/6qw9qOoy5HkgUp1YhkR+1rdkschbU
 valX6+rL0L8kWZruYCnShHtj8qjN1NCkeFytYoXNYrfmuGB8DZlnjNxck5vrbyr/SZYJ
 xOVpPq0jvAgIaOqwAqeuR47rJ8be01PA1bOrCBYvaJWxRTBSOi/M7KAJv5sKQueoL++y
 Qqgw==
X-Gm-Message-State: AOAM532JvqSc/31az1ac1KvZLI7kf1kZcNs5xzLox21Vs/ydOB7oGMq/
 pjsKyj9gxlJIW020lkKIlYg=
X-Google-Smtp-Source: ABdhPJwRBSpzI9YIHk7R1WcuxN+goDcQhY1G+dR99KVCSgiPmyee2NQj6GEh2XoLBgicaL6K3d0OzQ==
X-Received: by 2002:a05:6402:5303:b0:416:13c0:3e75 with SMTP id
 eo3-20020a056402530300b0041613c03e75mr5955489edb.299.1648120201320; 
 Thu, 24 Mar 2022 04:10:01 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 u18-20020a17090617d200b006db07a16cf5sm997290eje.77.2022.03.24.04.09.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Mar 2022 04:10:00 -0700 (PDT)
Date: Thu, 24 Mar 2022 13:09:59 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220324110959.t4hqale35qbrakdu@skbuf>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-3-schultz.hans+netdev@gmail.com>
 <86o81whmwv.fsf@gmail.com> <20220323123534.i2whyau3doq2xdxg@skbuf>
 <86wngkbzqb.fsf@gmail.com> <20220323144304.4uqst3hapvzg3ej6@skbuf>
 <86lewzej4n.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86lewzej4n.fsf@gmail.com>
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

On Thu, Mar 24, 2022 at 11:32:08AM +0100, Hans Schultz wrote:
> On ons, mar 23, 2022 at 16:43, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Wed, Mar 23, 2022 at 01:49:32PM +0100, Hans Schultz wrote:
> >> >> Does someone have an idea why there at this point is no option to add a
> >> >> dynamic fdb entry?
> >> >> 
> >> >> The fdb added entries here do not age out, while the ATU entries do
> >> >> (after 5 min), resulting in unsynced ATU vs fdb.
> >> >
> >> > I think the expectation is to use br_fdb_external_learn_del() if the
> >> > externally learned entry expires. The bridge should not age by itself
> >> > FDB entries learned externally.
> >> >
> >> 
> >> It seems to me that something is missing then?
> >> My tests using trafgen that I gave a report on to Lunn generated massive
> >> amounts of fdb entries, but after a while the ATU was clean and the fdb
> >> was still full of random entries...
> >
> > I'm no longer sure where you are, sorry..
> > I think we discussed that you need to enable ATU age interrupts in order
> > to keep the ATU in sync with the bridge FDB? Which means either to
> > delete the locked FDB entries from the bridge when they age out in the
> > ATU, or to keep refreshing locked ATU entries.
> > So it seems that you're doing neither of those 2 things if you end up
> > with bridge FDB entries which are no longer in the ATU.
> 
> Any idea why G2 offset 5 ATUAgeIntEn (bit 10) is set? There is no define
> for it, so I assume it is something default?

No idea, but I can confirm that the out-of-reset value I see for
MV88E6XXX_G2_SWITCH_MGMT on 6190 and 6390 is 0x400. It's best not to
rely on any reset defaults though.
