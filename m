Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80ACD6EFFE2
	for <lists.bridge@lfdr.de>; Thu, 27 Apr 2023 05:38:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90F1061588;
	Thu, 27 Apr 2023 03:38:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90F1061588
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=cBQI4hqk
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b0gSB_lFviWE; Thu, 27 Apr 2023 03:38:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id EC1E46158C;
	Thu, 27 Apr 2023 03:38:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC1E46158C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8FBF4C0089;
	Thu, 27 Apr 2023 03:38:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 505F6C002A
 for <bridge@lists.linux-foundation.org>; Thu, 27 Apr 2023 03:38:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 17C5983C7E
 for <bridge@lists.linux-foundation.org>; Thu, 27 Apr 2023 03:38:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17C5983C7E
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=cBQI4hqk
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ocFusLerDbnE for <bridge@lists.linux-foundation.org>;
 Thu, 27 Apr 2023 03:38:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2086183C65
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2086183C65
 for <bridge@lists.linux-foundation.org>; Thu, 27 Apr 2023 03:38:13 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-1a92513abebso82271945ad.2
 for <bridge@lists.linux-foundation.org>; Wed, 26 Apr 2023 20:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682566692; x=1685158692;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ELPzBxhv31gJFedKIGPMZx4OFsn/wYXDDLjuH8tqHzk=;
 b=cBQI4hqkpm2Ft2aqMx+KcZLPfkyFFBotV/uCaYCIQwkjMQ+Qh+zidrciBMIcedwfg3
 r/IXJIdvn7kuGE9UdzvM5oyM+EEQ2Mq0eUHnncZgMRc66U2aPAWv7qSyPqjB8aMV0ibp
 /CeHE5Q5Nepx7tPdBsmNQp7JhX3JgTg7B/rqAS8iYAxKmOi1V2R243JPrmnahHQy0e0v
 sQ42oeYjNdI3iGNdr2Irnnu5+A3NwKUpMWzLa5KQHSdsfXiufXVQtj34CdEVLkcK0EAe
 tQuhBVNKKM+lIw3ZeeRnkeffxPFy5olJifc8Ud8B+FmNFfM/tM85NsL6boO3i/O5sLAn
 Horg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682566692; x=1685158692;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ELPzBxhv31gJFedKIGPMZx4OFsn/wYXDDLjuH8tqHzk=;
 b=SUMYPVkilFgeM6O3aqVhvDHZM8Ker2/yIJGZntqNnyZ90sAxgaxX6YIwp+Az+RJ1Uf
 mR/VNQOF/0cxQw7SjXljiXL7Q3anWDgm6w/ac8YiPLBttDzmza4dmS7LRDftOtE0J17p
 L4ebvk0DeUoAVCyYROp+xX3X/FEF4NtGyVwoZZas3/Zs8OfkTJv2QLINaijQ5wr36+1G
 nmJNhHT49Ez5xXn3+y0FNg7UU3s8H1HteiU3o2bthSUg4PEN+vO585epjuzmEXvZ8hY+
 KfI9erEC780C39f2cNFCTRi/V2zicZ62ncDkXoRvqdhMedux3224ZWz5Rr/OhG6fPux8
 UWLg==
X-Gm-Message-State: AC+VfDzeU6lEUG3B4S+V9GMq5xBcCHiILG1V8TO4mgXfrvHG77T2LiVq
 EV2wBJaSIbXXt0A/PZai9rE=
X-Google-Smtp-Source: ACHHUZ5DIrBPBMxtEwJWiZ8UQH3tdqxAQflcchlmaIUKOO+c5qwKs67QRubNzsX4xvVs7hzRjYxOig==
X-Received: by 2002:a17:902:d3cc:b0:1a1:b172:5428 with SMTP id
 w12-20020a170902d3cc00b001a1b1725428mr71026plb.18.1682566692389; 
 Wed, 26 Apr 2023 20:38:12 -0700 (PDT)
Received: from Laptop-X1 ([209.132.188.80]) by smtp.gmail.com with ESMTPSA id
 jc13-20020a17090325cd00b001993a1fce7bsm10621600plb.196.2023.04.26.20.38.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Apr 2023 20:38:11 -0700 (PDT)
Date: Thu, 27 Apr 2023 11:38:06 +0800
From: Hangbin Liu <liuhangbin@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <ZEnuHppYIE3bCxEs@Laptop-X1>
References: <ZEZK9AkChoOF3Lys@Laptop-X1> <ZEakbR71vNuLnEFp@shredder>
 <5ddac447-c268-e559-a8dc-08ae3d124352@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5ddac447-c268-e559-a8dc-08ae3d124352@blackwall.org>
Cc: bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org
Subject: Re: [Bridge] [Question] Any plan to write/update the bridge doc?
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

On Tue, Apr 25, 2023 at 11:04:47AM +0300, Nikolay Aleksandrov wrote:
> Always +1 for keeping the man pages up-to-date, but I tend to agree with Jakub as well
> that it'd be nice to have an in-kernel doc which explains the uapi and potentially
> at least some more obscure internals (if not all), we can insist on updating it
> for new changes
> 
> I'd be happy to help fill such doc, but at the moment I don't have the
> time to write the basis for it. As Hangbin nicely offered, I think we can start
> there. For a start it'd be nice to make an initial outline of the different sections
> and go on filling them from there.
> 
> E.g. as a starter something like (feel free to edit):
> Introduction
> Bridge internals (fdb, timers, MTU handling, fwding decisions, ports, synchronization)
> STP (mst, rstp, timers, user-space stp etc)
> Multicast (mdb, igmp, eht, vlan-mcast etc)
> VLAN (filtering, options, tunnel...)
> Switchdev
> Netfilter
> MRP/CFM (?)
> FAQ
> 
> Each of these having uapi sections with descriptions. We can include references
> to the iproute2 docs for cmd explanations and examples, but in this doc we'll have
> the uapi descriptions and maybe some helpful information about internal implementation
> that would save future contributors time.
> 
> At the very least we can do the uapi part for each section so options are described
> and uapi nl attribute structures are explained.

OK, I will try start a draft version after the Labor holiday.

Hangbin
