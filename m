Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB6A4342B3
	for <lists.bridge@lfdr.de>; Wed, 20 Oct 2021 03:02:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CD9640696;
	Wed, 20 Oct 2021 01:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pECxe_bbzdbi; Wed, 20 Oct 2021 01:02:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 33F4940687;
	Wed, 20 Oct 2021 01:02:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D63B0C0022;
	Wed, 20 Oct 2021 01:02:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0D8FEC000D
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 01:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E17AF83437
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 01:02:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5pPhQQ4Jz0JF for <bridge@lists.linux-foundation.org>;
 Wed, 20 Oct 2021 01:02:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5C36B83252
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 01:02:08 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 na16-20020a17090b4c1000b0019f5bb661f9so1286518pjb.0
 for <bridge@lists.linux-foundation.org>; Tue, 19 Oct 2021 18:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hi2XgGMyKlW1UQqVPtudcWKRJ8oy8AP52PmaKHN5Psc=;
 b=TtnXz8j05nBGuK9AZ6rd7YHuSUTGgXo+fTuhC5awTXnhYCoD9ZQUU50R+q/yV24wAF
 TqQP8T+SAV6UEwVqPVpU0mPWV9pfdjcuT6ad0aQPiDYtzzOxTlnHNsbTBSagcH+TZdVR
 NgnNW7PfsUp8d7xgHqLvA0+JcKaiwF+9dByN0lLIuHIgyvGk//P4mCp+Reg5GpuBJ6P/
 HY2/R3ve6aaMjGCi43VJxxcoiQ2hOT77jMQxVuRikI2INC8/Q9F1pnYpTaU28QDATKhb
 ZyU0lgUqMPWn/Af/0N8K6CcUs0izUXaBTEv+hsuxVxB0YzdnNU2U7WqTjNmDA0eyWAYT
 LODg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hi2XgGMyKlW1UQqVPtudcWKRJ8oy8AP52PmaKHN5Psc=;
 b=36iHOVDZA/jk/R4i1g9DBBlB/Mh1hRZ8Xt0m6M4uvO43DOmUtLTlszHmFW/tHlD7E7
 Vh4dQkX3sp6wb84HW7gRWFsnRy4TVfwJkufhYHKCSP2AV3dFkR0HlwWq9XE33T82Y1v0
 YOvGpwfLkAN98eUOkZQ6TEwwUpbBsXvjKKmwcBhOmpeyXox8U1chy48k21JPjGrFq4rS
 nGzusF6RwCrQdpOuDSE1QGW5js4JJqqEQCMaLe4FIzCLuyfUTImlhkcDY0HESelIEymk
 sW+T1NeEP/6+P5tLhpOSO55T67yobXZjLIMuR5YnedYQAd0QB1ZNxOpOt0RK/X0SsVNV
 zvAQ==
X-Gm-Message-State: AOAM531k9etbrpJ6s455U1odgre5lek4eXd52haxBrvu9Mpj6RdydceM
 xGGtRQV+JE+voWPTwEm4NQQ=
X-Google-Smtp-Source: ABdhPJyfdw7pb6L+UgpChrOus0lqMttLCLDN7byLmTNR5g0jrUEZNRyfqI/HfRgVsMuy6XUag1k4JQ==
X-Received: by 2002:a17:90b:1bc6:: with SMTP id
 oa6mr3696186pjb.206.1634691727832; 
 Tue, 19 Oct 2021 18:02:07 -0700 (PDT)
Received: from Laptop-X1 ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id x6sm419489pfh.77.2021.10.19.18.02.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Oct 2021 18:02:07 -0700 (PDT)
Date: Wed, 20 Oct 2021 09:02:01 +0800
From: Hangbin Liu <liuhangbin@gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <YW9qiUhDKT+56wkd@Laptop-X1>
References: <20211018082612.625417-1-liuhangbin@gmail.com>
 <ab707f4d-587a-0fae-e673-5da49f5946db@nvidia.com>
 <YW5a9JLnfZc1M8Gh@Laptop-X1>
 <a6bbd579-3d5f-6cbd-9523-49226a2b5a7a@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a6bbd579-3d5f-6cbd-9523-49226a2b5a7a@nvidia.com>
Cc: kuba@kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net] net: bridge: mcast: Do not allow users to
 set IGMP counter/timer to zero
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

On Tue, Oct 19, 2021 at 07:09:42PM +0300, Nikolay Aleksandrov wrote:
> > I started this patch when I saw there is not limit for setting
> > multicast_membership_interval to 0, which will cause bridge remove the
> > mdb directly after adding. Do you think this is a problem.
> > 
> > And what about others? I don't think there is a meaning to set other intervals
> > to 0.
> > 
> 
> The problem is not if there is meaning, we cannot start restricting option values now after
> they've become uapi (and have been for a very long time) because we can break user-space even
> though chances are pretty low. I don't think this patch is acceptable, I commented on the other
> patch issues but they don't matter because of this.

OK, I got your mean, we should not restrict the configurations based on whether
there is a meaning.

Thanks
Hangbin
