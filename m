Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3537C03B8
	for <lists.bridge@lfdr.de>; Tue, 10 Oct 2023 20:50:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6042281DF9;
	Tue, 10 Oct 2023 18:50:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6042281DF9
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=eFcmCUPo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id litwO5lU793e; Tue, 10 Oct 2023 18:50:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id EBEB781DEC;
	Tue, 10 Oct 2023 18:50:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBEB781DEC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 81023C0DD3;
	Tue, 10 Oct 2023 18:50:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 67E65C0032
 for <bridge@lists.linux-foundation.org>; Tue, 10 Oct 2023 18:50:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 43CF96144F
 for <bridge@lists.linux-foundation.org>; Tue, 10 Oct 2023 18:50:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43CF96144F
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=eFcmCUPo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8iOXq_bDP8PN for <bridge@lists.linux-foundation.org>;
 Tue, 10 Oct 2023 18:50:51 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 376E261376
 for <bridge@lists.linux-foundation.org>; Tue, 10 Oct 2023 18:50:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 376E261376
Received: by mail-ed1-x530.google.com with SMTP id
 4fb4d7f45d1cf-533f193fc8dso10599559a12.2
 for <bridge@lists.linux-foundation.org>; Tue, 10 Oct 2023 11:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1696963849; x=1697568649;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0gwxmekZJHXGMm97urkxFALVTBAcR9EJxHGti0iGF1E=;
 b=eFcmCUPogmgIm62WVkS4WlBAZtqe9lSMv0IwIP/NQxEBmAscMBDpml3H/84B/me46e
 QkvUBMSXeT4fpAukiyb/9asV9xanz/d8zEvwFin5pNqO1jvmYkY069Ed1Hcl8/cNXC6q
 j5fmm3fK6XlL3NVJTG/OYlpbrdQasRqJRKktSzZFzMnBjV7PvFLxHLSOQXdomyoN+NrR
 MW1bHs898PjQlcbH7FYT/2HUZ7zXvhEc3h6KlKHrKhSPQRDjUIlb4cq8RKZuzLz0jI8E
 yVZC8FhFPOwNr3qmlP0LCjE0XnReBmDyxpL8Shz4eOtmgnvgmsDWQEeAKz0rH7gBLNx/
 nGpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696963849; x=1697568649;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0gwxmekZJHXGMm97urkxFALVTBAcR9EJxHGti0iGF1E=;
 b=cLCTa0cSPidH485YiUNPypCBfQq+OvpGj9ppLHZBcilKI4RUOLrKXZfOrYq+YgwRnd
 ZImwvTyT5GD6QbwrM3X/GuIDkFyN/G1R8OiishFmED+ZO+hffbs2WJ6SAYKksb75OPUh
 9o1lCewX7jAB/YYC99AjJ0K8BZ7jgOvW5R5Nk88ksdh4rUtYPQUfeZPpx3NSqu1QqAch
 yrj1mezFpX4IG96t+8dJB65X+ZVHK+2kZJT1kAQ1DvLaROUuxLifTraXfDtr1Y6RLF/F
 t1ni4JOKXhxR51ICqp6NxRPjXhEEtm2Xju5vKHXgFtLdFk1jwBSPqXyGIKSvRe1J6Fg7
 1YUg==
X-Gm-Message-State: AOJu0YxhFvS2nSyU6X+MngI+edh/CVpdIu0Q2b30KbwSX/aAZxc2BiG3
 vJF/tjIIWDneEKTxnJcMVHErVg==
X-Google-Smtp-Source: AGHT+IHrAowWJlFlabG6aYlY6Zdd0ztf2Dg4p0C675+6jMf7XUJ/dVtAnJOOBpOTMtL0KnCILEZUuw==
X-Received: by 2002:aa7:d996:0:b0:522:2d1b:5a38 with SMTP id
 u22-20020aa7d996000000b005222d1b5a38mr17428012eds.10.1696963848854; 
 Tue, 10 Oct 2023 11:50:48 -0700 (PDT)
Received: from [192.168.0.105] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 j17-20020aa7c411000000b0053635409213sm8044249edq.34.2023.10.10.11.50.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Oct 2023 11:50:48 -0700 (PDT)
Message-ID: <4bf848f2-94a6-d941-645b-42309def1900@blackwall.org>
Date: Tue, 10 Oct 2023 21:50:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Amit Cohen <amcohen@nvidia.com>, netdev@vger.kernel.org
References: <20231009100618.2911374-1-amcohen@nvidia.com>
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231009100618.2911374-1-amcohen@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, dsahern@kernel.org, bridge@lists.linux-foundation.org,
 idosch@nvidia.com, linux-kselftest@vger.kernel.org, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, shuah@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 00/11] Extend VXLAN driver to support
 FDB flushing
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

On 10/9/23 13:06, Amit Cohen wrote:
> The merge commit 92716869375b ("Merge branch 'br-flush-filtering'") added
> support for FDB flushing in bridge driver. Extend VXLAN driver to support
> FDB flushing also. Add support for filtering by fields which are relevant
> for VXLAN FDBs:
> * Source VNI
> * Nexthop ID
> * 'router' flag
> * Destination VNI
> * Destination Port
> * Destination IP
> 
> Without this set, flush for VXLAN device fails:
> $ bridge fdb flush dev vx10
> RTNETLINK answers: Operation not supported
> 
> With this set, such flush works with the relevant arguments, for example:
> $ bridge fdb flush dev vx10 vni 5000 dst 193.2.2.1
> < flush all vx10 entries with VNI 5000 and destination IP 193.2.2.1>
> 
> Some preparations are required, handle them before adding flushing support
> in VXLAN driver. See more details in commit messages.
> 
> Patch set overview:
> Patch #1 prepares flush policy to be used by VXLAN driver
> Patches #2-#3 are preparations in VXLAN driver
> Patch #4 adds an initial support for flushing in VXLAN driver
> Patches #5-#9 add support for filtering by several attributes
> Patch #10 adds a test for FDB flush with VXLAN
> Patch #11 extends the test to check FDB flush with bridge
> 
> Amit Cohen (11):
>    net: Handle bulk delete policy in bridge driver
>    vxlan: vxlan_core: Make vxlan_flush() more generic for future use
>    vxlan: vxlan_core: Do not skip default entry in vxlan_flush() by
>      default
>    vxlan: vxlan_core: Add support for FDB flush
>    vxlan: vxlan_core: Support FDB flushing by source VNI
>    vxlan: vxlan_core: Support FDB flushing by nexthop ID
>    vxlan: vxlan_core: Support FDB flushing by destination VNI
>    vxlan: vxlan_core: Support FDB flushing by destination port
>    vxlan: vxlan_core: Support FDB flushing by destination IP
>    selftests: Add test cases for FDB flush with VXLAN device
>    selftests: fdb_flush: Add test cases for FDB flush with bridge device
> 
>   drivers/net/vxlan/vxlan_core.c           | 207 +++++-
>   include/linux/netdevice.h                |   8 +-
>   net/bridge/br_fdb.c                      |  29 +-
>   net/bridge/br_private.h                  |   3 +-
>   net/core/rtnetlink.c                     |  27 +-
>   tools/testing/selftests/net/Makefile     |   1 +
>   tools/testing/selftests/net/fdb_flush.sh | 812 +++++++++++++++++++++++
>   7 files changed, 1049 insertions(+), 38 deletions(-)
>   create mode 100755 tools/testing/selftests/net/fdb_flush.sh
> 

Nice use of the flush api. :)
The set looks good to me. For the set:
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
