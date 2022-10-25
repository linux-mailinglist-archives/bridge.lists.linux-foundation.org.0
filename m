Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B58B460CA7C
	for <lists.bridge@lfdr.de>; Tue, 25 Oct 2022 13:00:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 393C040873;
	Tue, 25 Oct 2022 11:00:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 393C040873
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=csA4tV2W
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yX2Fmi3hyy41; Tue, 25 Oct 2022 11:00:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 7595F404F9;
	Tue, 25 Oct 2022 11:00:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7595F404F9
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 16D21C007C;
	Tue, 25 Oct 2022 11:00:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 625A3C002D
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 11:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 300FF60AF2
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 11:00:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 300FF60AF2
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=csA4tV2W
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id assPjOiW7ZCN for <bridge@lists.linux-foundation.org>;
 Tue, 25 Oct 2022 11:00:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C23D1605B0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C23D1605B0
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 11:00:38 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id k2so11514302ejr.2
 for <bridge@lists.linux-foundation.org>; Tue, 25 Oct 2022 04:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=XwmRTbb7Z1iwYqyAXL7gKB2BP7kYpxso4h/Svsr1CMI=;
 b=csA4tV2W4ZPfUGsLZe9XIg6GPvBX0o6HttxaPDBrirhtOECbekGMAlDBM9lzWqmKwc
 VvLUe4zPT5C27KQ5VReqNEn/JzcranIVRM2aqTI5a0qoBhn1lBsCvpVl6dngfsH21ug1
 /j3HZXqMMiRSLTjWU7CLja/lLWLp0YhnCddQN2LR88Gk/kqI0YxcC9SWNXE9C8wIrvOn
 dNJnFVt9Rv5S4ldgQFqBMQFkfQxXX6nGQXugGQTNJMyqZbSI4+lMgDobYZuJ8zbTf2yM
 8N2r79YY8ICkwGzHJ9ZaHoC3JkkCBZ7pT/Zz2aWFe1ojKQ2NWuXvq40+gLFhbAg+sfiJ
 PztQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XwmRTbb7Z1iwYqyAXL7gKB2BP7kYpxso4h/Svsr1CMI=;
 b=cFPmXxDkkOO4w1XwA6LPM/efnE/vY9KyW6+Zkhtu5PAuv1HVaEBWjyfDO65S4hRH1Y
 N/3+mIyg4JClXdgocDUYznT+fJLEWFturUHbrOjQWuJvSCDL/04KFA1SxPfFb1VG0Pc3
 PH8SMYjpF5QUEL99+9fDO0/gTgl+bQl+232VH3aCM+hxYYx7AxlcH7NY8kMa2dnwxAYY
 evhCBkBX6NrOrTBCQGQjy7EFQh6hODUgTVNyS85vkg1uPf8pAEuK5r+Px+wDvf8ROwp7
 3xyIAK7xlvux2Kkmkl4w/gZ+xMqSkvqFWJxAzvlB1ClsfIctguHg9BPtAc0MycuwRDmU
 w+IQ==
X-Gm-Message-State: ACrzQf1CP4KnZXIW/nalML2XGC+rO3/lLW4Jm8yFAk7KbqTrBwpUIZD/
 oeKlprvojawNFrzH1PQYGI1jnA==
X-Google-Smtp-Source: AMsMyM5TvxPC6AZyWop4BCjg3BEgUkG4n9UgYEwrn78ckvahizQdXWcBIl9MWSA+mIKv19MxMIN5UQ==
X-Received: by 2002:a17:906:ef8b:b0:791:9980:b7b9 with SMTP id
 ze11-20020a170906ef8b00b007919980b7b9mr32017396ejb.636.1666695636384; 
 Tue, 25 Oct 2022 04:00:36 -0700 (PDT)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 z17-20020a170906271100b0078a543e9301sm1165349ejc.200.2022.10.25.04.00.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Oct 2022 04:00:36 -0700 (PDT)
Message-ID: <9c0eb6c4-a52c-f2a9-b9be-c4b9805ac44f@blackwall.org>
Date: Tue, 25 Oct 2022 14:00:34 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221025100024.1287157-1-idosch@nvidia.com>
 <20221025100024.1287157-2-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221025100024.1287157-2-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, ivecera@redhat.com, netdev@kapio-technology.com,
 roopa@nvidia.com, vladimir.oltean@nxp.com, edumazet@google.com,
 mlxsw@nvidia.com, jiri@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 01/16] bridge: Add MAC
 Authentication Bypass (MAB) support
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

On 25/10/2022 13:00, Ido Schimmel wrote:
> From: "Hans J. Schultz" <netdev@kapio-technology.com>
> 
> Hosts that support 802.1X authentication are able to authenticate
> themselves by exchanging EAPOL frames with an authenticator (Ethernet
> bridge, in this case) and an authentication server. Access to the
> network is only granted by the authenticator to successfully
> authenticated hosts.
> 
> The above is implemented in the bridge using the "locked" bridge port
> option. When enabled, link-local frames (e.g., EAPOL) can be locally
> received by the bridge, but all other frames are dropped unless the host
> is authenticated. That is, unless the user space control plane installed
> an FDB entry according to which the source address of the frame is
> located behind the locked ingress port. The entry can be dynamic, in
> which case learning needs to be enabled so that the entry will be
> refreshed by incoming traffic.
> 
> There are deployments in which not all the devices connected to the
> authenticator (the bridge) support 802.1X. Such devices can include
> printers and cameras. One option to support such deployments is to
> unlock the bridge ports connecting these devices, but a slightly more
> secure option is to use MAB. When MAB is enabled, the MAC address of the
> connected device is used as the user name and password for the
> authentication.
> 
> For MAB to work, the user space control plane needs to be notified about
> MAC addresses that are trying to gain access so that they will be
> compared against an allow list. This can be implemented via the regular
> learning process with the following differences:
> 
> 1. Learned FDB entries are installed with a new "locked" flag indicating
>    that the entry cannot be used to authenticate the device. The flag
>    cannot be set by user space, but user space can clear the flag by
>    replacing the entry, thereby authenticating the device.
> 
> 2. FDB entries cannot roam to locked ports to prevent unauthenticated
>    devices from disrupting traffic destined to already authenticated
>    devices.
> 
> Enable this behavior using a new bridge port option called "mab". It can
> only be enabled on a bridge port that is both locked and has learning
> enabled. A new option is added because there are pure 802.1X deployments
> that are not interested in notifications about "locked" FDB entries.
> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     Changes made by me:
>     
>      * Reword commit message.
>      * Reword comment regarding 'NTF_EXT_LOCKED'.
>      * Use extack in br_fdb_add().
>      * Forbid MAB when learning is disabled.
> 
>  include/linux/if_bridge.h      |  1 +
>  include/uapi/linux/if_link.h   |  1 +
>  include/uapi/linux/neighbour.h |  8 +++++++-
>  net/bridge/br_fdb.c            | 24 ++++++++++++++++++++++++
>  net/bridge/br_input.c          | 15 +++++++++++++--
>  net/bridge/br_netlink.c        | 13 ++++++++++++-
>  net/bridge/br_private.h        |  3 ++-
>  net/core/rtnetlink.c           |  5 +++++
>  8 files changed, 65 insertions(+), 5 deletions(-)
> 

Thanks for finalizing this, the patch looks good to me.
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

Thanks,
 Nik
