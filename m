Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAA76BCA25
	for <lists.bridge@lfdr.de>; Thu, 16 Mar 2023 09:55:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 026F741521;
	Thu, 16 Mar 2023 08:55:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 026F741521
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=GuW8V60Z
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xNln229L1BUE; Thu, 16 Mar 2023 08:55:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 1DD1D4148F;
	Thu, 16 Mar 2023 08:55:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DD1D4148F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BA102C008C;
	Thu, 16 Mar 2023 08:55:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0E87AC0032
 for <bridge@lists.linux-foundation.org>; Thu, 16 Mar 2023 08:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE87B60A9D
 for <bridge@lists.linux-foundation.org>; Thu, 16 Mar 2023 08:55:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE87B60A9D
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=GuW8V60Z
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3nLq-B3sMxQ1 for <bridge@lists.linux-foundation.org>;
 Thu, 16 Mar 2023 08:55:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6877C607B5
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6877C607B5
 for <bridge@lists.linux-foundation.org>; Thu, 16 Mar 2023 08:55:41 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 az3-20020a05600c600300b003ed2920d585so2645724wmb.2
 for <bridge@lists.linux-foundation.org>; Thu, 16 Mar 2023 01:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1678956939;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=eLCjSCBDqMq/ciVVpyfzYuWBjZ8nlT4qHwYgluMAIAM=;
 b=GuW8V60Zy8eSbpYheOlmqkZlOIriPSrSI/NlE9pBhqmlXl4T74wFhwxbwk7mgyyISH
 pATgvo7UZcUEh8H06PgZ2m0vCdckNPgmVcflZukpW8Caqy85FFrrVVbxiWDa3JTgM4ih
 bNDx/GjZTU0D4WEWtKteeeI0UWPWIEcr+qAaGDUhUC1Y0e7CFyC8haS4mj0OFTGd7dGw
 RlWXZcsgufL8I5puKi6E/txz6MjNjd/AUonJCSc57uPZIGCfRxTLyzHKyAu7+GAkeFap
 Tykjmu4DAHRtf6uoY5e2PVJsMGn+1k6Dl9AuAmnPBbLa8zksAe82B1OW5gi8FKjHZhGd
 rBdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678956939;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eLCjSCBDqMq/ciVVpyfzYuWBjZ8nlT4qHwYgluMAIAM=;
 b=7fXp/HZ8dgwRo6C1k+DM/8gq9tINSPcDafX2gHmpLGi6UsuxzPw13ptCbmaw0I8Uiu
 nHUAOKAG4wDWSvzVIaJKgQTAORHVJLe/yaUlIlfoPXgYmZzkJf71mLMjPoYLKJfjChtN
 rndiQlFVzmXGu6OMau3LPv8LYF1G0NL4maxGlHG+MRWbkRZMn+rIxra6M4EZcXsMf5nD
 VtG9dtTJPesQK+yng6e9JJ0lYIa7LD2scxLwa4CIM4ND7fBUw6YgzmzKfKq2sDT1MVKo
 EZP3esFFGLK/u3j/Ve8I3CbZ5N+jtr1QmKb21YWsxnni0qGHAdjckriTg6fuptzqf+iX
 uHvQ==
X-Gm-Message-State: AO0yUKWwVD+uspg3v/pf3YUC61e4sBcajblzm+gL+Wp2PPSfNzljhuAC
 vPcVs3fLhb4RDpAzDnZ38Z9G1g==
X-Google-Smtp-Source: AK7set+ohwPDh/6S1iVW3YxhaxNH2kKYgV1Sr9OgkFgYxfzoB3bUa7c4n6d+XCZ77q1YfXYqgatW2w==
X-Received: by 2002:a05:600c:a39b:b0:3ed:2311:4fb9 with SMTP id
 hn27-20020a05600ca39b00b003ed23114fb9mr7652951wmb.1.1678956939319; 
 Thu, 16 Mar 2023 01:55:39 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 v7-20020a05600c214700b003eaf666cbe0sm4291540wml.27.2023.03.16.01.55.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Mar 2023 01:55:39 -0700 (PDT)
Message-ID: <4e6c9f88-d241-1e5f-78c2-cf4f592750b9@blackwall.org>
Date: Thu, 16 Mar 2023 10:55:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230315131155.4071175-1-idosch@nvidia.com>
 <20230315131155.4071175-10-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230315131155.4071175-10-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 09/11] vxlan: Add MDB data path
	support
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

On 15/03/2023 15:11, Ido Schimmel wrote:
> Integrate MDB support into the Tx path of the VXLAN driver, allowing it
> to selectively forward IP multicast traffic according to the matched MDB
> entry.
> 
> If MDB entries are configured (i.e., 'VXLAN_F_MDB' is set) and the
> packet is an IP multicast packet, perform up to three different lookups
> according to the following priority:
> 
> 1. For an (S, G) entry, using {Source VNI, Source IP, Destination IP}.
> 2. For a (*, G) entry, using {Source VNI, Destination IP}.
> 3. For the catchall MDB entry (0.0.0.0 or ::), using the source VNI.
> 
> The catchall MDB entry is similar to the catchall FDB entry
> (00:00:00:00:00:00) that is currently used to transmit BUM (broadcast,
> unknown unicast and multicast) traffic. However, unlike the catchall FDB
> entry, this entry is only used to transmit unregistered IP multicast
> traffic that is not link-local. Therefore, when configured, the catchall
> FDB entry will only transmit BULL (broadcast, unknown unicast,
> link-local multicast) traffic.
> 
> The catchall MDB entry is useful in deployments where inter-subnet
> multicast forwarding is used and not all the VTEPs in a tenant domain
> are members in all the broadcast domains. In such deployments it is
> advantageous to transmit BULL (broadcast, unknown unicast and link-local
> multicast) and unregistered IP multicast traffic on different tunnels.
> If the same tunnel was used, a VTEP only interested in IP multicast
> traffic would also pull all the BULL traffic and drop it as it is not a
> member in the originating broadcast domain [1].
> 
> If the packet did not match an MDB entry (or if the packet is not an IP
> multicast packet), return it to the Tx path, allowing it to be forwarded
> according to the FDB.
> 
> If the packet did match an MDB entry, forward it to the associated
> remote VTEPs. However, if the entry is a (*, G) entry and the associated
> remote is in INCLUDE mode, then skip over it as the source IP is not in
> its source list (otherwise the packet would have matched on an (S, G)
> entry). Similarly, if the associated remote is marked as BLOCKED (can
> only be set on (S, G) entries), then skip over it as well as the remote
> is in EXCLUDE mode and the source IP is in its source list.
> 
> [1] https://datatracker.ietf.org/doc/html/draft-ietf-bess-evpn-irb-mcast#section-2.6
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v2:
>     * Use htons() in 'case' instead of ntohs() in 'switch'.
> 
>  drivers/net/vxlan/vxlan_core.c    |  15 ++++
>  drivers/net/vxlan/vxlan_mdb.c     | 114 ++++++++++++++++++++++++++++++
>  drivers/net/vxlan/vxlan_private.h |   6 ++
>  3 files changed, 135 insertions(+)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>


