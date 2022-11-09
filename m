Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CAE62307A
	for <lists.bridge@lfdr.de>; Wed,  9 Nov 2022 17:51:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10EF8812D3;
	Wed,  9 Nov 2022 16:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10EF8812D3
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=networkplumber-org.20210112.gappssmtp.com header.i=@networkplumber-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=wfl1a/21
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qNinPseIUjOb; Wed,  9 Nov 2022 16:51:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 67C8D812B2;
	Wed,  9 Nov 2022 16:51:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67C8D812B2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DF3ECC0077;
	Wed,  9 Nov 2022 16:51:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A3664C002D
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 16:51:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7CFEF40340
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 16:51:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CFEF40340
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=networkplumber-org.20210112.gappssmtp.com
 header.i=@networkplumber-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=wfl1a/21
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QRcRIRhdTkjd for <bridge@lists.linux-foundation.org>;
 Wed,  9 Nov 2022 16:51:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AE2C401D6
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4AE2C401D6
 for <bridge@lists.linux-foundation.org>; Wed,  9 Nov 2022 16:51:15 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id k5so17233854pjo.5
 for <bridge@lists.linux-foundation.org>; Wed, 09 Nov 2022 08:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PyOEs71AmoxlwRiKiZ98pdROGJ7d0FHsUwtImU/ttlM=;
 b=wfl1a/21cr09/6H2ZJqmzxoX2i397OZeYWgy1mWaA10g+PbLSY1gc8xxbc5J6LqnX7
 9jdYaw+YFl/bQ+/tWZLF8AomKx74wywPnCIUgGYpacCNHMVgashcp/8QURFGtY+KCCRQ
 3kV0qBN2TfWJ2dCc1dVHnhaIYOI3L5Fsbb7BtYCiwPe5w4CwlzcnbuT9Pmu+zbuyGfVu
 UT3PqfIcVK+jdeyFzoMnkFeW+SY+nn26r1kL7tWLVX81b6lwNgN5rwBjD71OJzqRxIgp
 RP8GlZu9QUxJpGZC/Z6dvoQrbs0Ur9eWI6Qrt0SgWNfjerzBx94J+E38VmVcFX0AXolB
 bhlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PyOEs71AmoxlwRiKiZ98pdROGJ7d0FHsUwtImU/ttlM=;
 b=kZV5gTnn2QrmQBD98Y0mnmU0md1LFBRo/Xc78ESle+gX1SDycXcDCWCWdDWz9AJLTl
 ugAFnNoknVvKt747roVRPGY9OiAR1sDcMQou0/nYkJMK9FNLQpK7yXeqbNHn/SgtyTcb
 RPeWUEuuTWy2oQ9wJCivajXb6emT5CCNTkp7lo86uxZaje3SsqHFFlbP95xjwei5T8Vj
 NfEgTTH/OC4KjhcCL0k1DcTauKocPoJDcV/2JJD28aYCsC2sVQU6W+5zW96/Ph0s/Wjw
 UWecxxIFAs6nqW24NGVpkHoQu0syqOdAWR6wKFlwP2RpdxVm/001eULmTI9ryXTVzkVP
 W7rQ==
X-Gm-Message-State: ACrzQf08+yQIvj4Pmhu60du3ZLocIaqO3Pm2w6scv2OYi0PL8t2Xt6iw
 VR3RDukcqR3Wzjw8BsJ0ktCuYIoyCGHc+Q==
X-Google-Smtp-Source: AMsMyM6zRzNpB/0wvfRdWxsoCi/5xHzsk+EDUZZcCr4l2VT19zT1Tb65rmToP2KLJCVaioF0+H/upA==
X-Received: by 2002:a17:90b:11d4:b0:212:ee83:481 with SMTP id
 gv20-20020a17090b11d400b00212ee830481mr61765872pjb.36.1668012674207; 
 Wed, 09 Nov 2022 08:51:14 -0800 (PST)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 h37-20020a635765000000b00412a708f38asm7712902pgm.35.2022.11.09.08.51.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Nov 2022 08:51:13 -0800 (PST)
Date: Wed, 9 Nov 2022 08:51:09 -0800
To: Ali Shirvani via Bridge <bridge@lists.linux-foundation.org>
Message-ID: <20221109085109.6b0f87d3@hermes.local>
In-Reply-To: <nWfVbvdboX65r0xMXv0iZCj8TH7c8vStvilCD3Ilx5Y42yoHh34rJHJBMy8y4HhqXWXM0n3tLhLD870c863UjI20HBSxM8qwJlLMxuPjg0g=@protonmail.com>
References: <nWfVbvdboX65r0xMXv0iZCj8TH7c8vStvilCD3Ilx5Y42yoHh34rJHJBMy8y4HhqXWXM0n3tLhLD870c863UjI20HBSxM8qwJlLMxuPjg0g=@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] How to connect more than 200 interfaces to a bridge
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
From: Stephen Hemminger via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Wed, 09 Nov 2022 10:51:27 +0000
Ali Shirvani via Bridge <bridge@lists.linux-foundation.org> wrote:

> Hello everyone,
> 
> It seems we reach the Linux bridge limitation on the number of interfaces in a single bridge. Currently, we have 210 tap interface in a bridge, and we suffer from more than 50% packet loss when we ping the IP address of the virtual machine that uses one of the tap interfaces in the bridge.
> Do you know how we can connect more than 200 VMs virtual interfaces to a bridge?
> 
> Best regards,
> Ali
> 
> Sent with [Proton Mail](https://proton.me/) secure email.

The upper limit on interfaces per bridge should be 1023.
That limitation comes from spanning tree.

You might bet able to improve performance by disabling flooding to those tap devices.
Normally, any broadcast/unknown/multicast must be copied and flooded to each interface.
