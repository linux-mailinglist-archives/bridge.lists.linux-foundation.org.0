Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEC769020D
	for <lists.bridge@lfdr.de>; Thu,  9 Feb 2023 09:24:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BF8660C22;
	Thu,  9 Feb 2023 08:24:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BF8660C22
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=3v5R4qiB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3glkeDYv8c7G; Thu,  9 Feb 2023 08:24:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E801660C20;
	Thu,  9 Feb 2023 08:24:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E801660C20
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 90C00C007C;
	Thu,  9 Feb 2023 08:24:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F0D53C002B
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 08:24:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF13160C22
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 08:24:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF13160C22
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WDicLznbnFan for <bridge@lists.linux-foundation.org>;
 Thu,  9 Feb 2023 08:24:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0093260C20
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0093260C20
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 08:24:14 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id gr7so4038704ejb.5
 for <bridge@lists.linux-foundation.org>; Thu, 09 Feb 2023 00:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=El/eQRB9yhNDVbsyMGqKU4oQ0Q74MtAF8R0BcKylaqk=;
 b=3v5R4qiBVq9xM6wLqd0c+DpbRhP9+tZtjDzbvwbfeoPESvrF4juCtFgGyLrP+Zfs9E
 /LILszyUzaEEC+48igySPuXXMfC8m1m1d0aP+gp9pUpz0cTNX2hLDRLixS7lC/0hTu9F
 GDN7gbqvP6vXL3j7MVmQzX2XS3UaJixA+3bUQJuz0iOVl16s9lHfGbVJ3KqOZ2Sdrctn
 EhsZtWxk3oZVhnHf3V/xLXYBGKAn6MTkG2L+Kw0DS66OlXjaNUIR3UfcpCONlidkfRQz
 EWWaqAP9aDdLaoTafn6pTNugqWs2ceVbVs15xLojebZQ4ru7pMubAHWfvXsf6l/DW0CO
 h3Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=El/eQRB9yhNDVbsyMGqKU4oQ0Q74MtAF8R0BcKylaqk=;
 b=4g2karwgcLA+Gfircdkrcdtt3X24sXq/E1uHFDEqlleQlmKia2RpDHz7LeVTm50E1v
 APoKkuElrpEtLmDG8QNgOW/sIMwigWJLQhL9pB0rXnr2Sv+rfPYRrOrBeGqO1sJePBWj
 i/gWR4u+f4d1dV7nHSRVpcSNaBLpREPrDovmp4Blw6J8/LmtMStrBws6E3BJNN3YqFkl
 k4GJkVgFRLxoFUzIzVruuZ8naIvp+QP1Q398QKMPokIe/4KOzZ4fXoX3ZkjCgwcAfzrD
 dZEIjBYXuSkpGcGnfvcK8z01LyVhczyKMBZGJDJVT9UQ11iyCjeX3d2Izt0Pyqt9GByB
 ZNVw==
X-Gm-Message-State: AO0yUKXS22ZkV8Zhn1KDlf8ml4H9J8pw++8+67kCJLHyGJrJ2AN4Fdra
 wbsGb/PFJysC9ryF+g4bR/+x3MEJKhhYI/kj5FdELgWW
X-Google-Smtp-Source: AK7set/jbC+og9VFjGivS6G29TZo00HmpHLt8QNywmtSV61KLYDhVFFtQbr2y3KgqCYfqcmCVoE7nA==
X-Received: by 2002:a17:906:1ec8:b0:88d:5fd1:3197 with SMTP id
 m8-20020a1709061ec800b0088d5fd13197mr10669050ejj.50.1675931053264; 
 Thu, 09 Feb 2023 00:24:13 -0800 (PST)
Received: from [192.168.100.228] (212-147-51-13.fix.access.vtx.ch.
 [212.147.51.13]) by smtp.gmail.com with ESMTPSA id
 n17-20020a170906165100b008af3fd7a1e7sm265464ejd.121.2023.02.09.00.24.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Feb 2023 00:24:13 -0800 (PST)
Message-ID: <e69754d3-dead-5477-266b-8618f567ac34@blackwall.org>
Date: Thu, 9 Feb 2023 09:24:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230209071852.613102-1-idosch@nvidia.com>
 <20230209071852.613102-5-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230209071852.613102-5-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 4/4] selftests: forwarding: Add MDB
 dump test cases
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

On 2/9/23 09:18, Ido Schimmel wrote:
> The kernel maintains three markers for the MDB dump:
> 
> 1. The last bridge device from which the MDB was dumped.
> 2. The last MDB entry from which the MDB was dumped.
> 3. The last port-group entry that was dumped.
> 
> Add test cases for large scale MDB dump to make sure that all the
> configured entries are dumped and that the markers are used correctly.
> 
> Specifically, create 2 bridges with 32 ports and add 256 MDB entries in
> which all the ports are member of. Test that each bridge reports 8192
> (256 * 32) permanent entries. Do that with IPv4, IPv6 and L2 MDB
> entries.
> 
> On my system, MDB dump of the above is contained in about 50 netlink
> messages.
> 
> Example output:
> 
>   # ./bridge_mdb.sh
>   [...]
>   INFO: # Large scale dump tests
>   TEST: IPv4 large scale dump tests                                   [ OK ]
>   TEST: IPv6 large scale dump tests                                   [ OK ]
>   TEST: L2 large scale dump tests                                     [ OK ]
>   [...]
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> Reviewed-by: Petr Machata <petrm@nvidia.com>
> ---
>   .../selftests/net/forwarding/bridge_mdb.sh    | 99 +++++++++++++++++++
>   1 file changed, 99 insertions(+)
> 

Nice!
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

