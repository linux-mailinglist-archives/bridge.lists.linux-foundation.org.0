Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FABE4FEA2A
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 00:44:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32F5983E2B;
	Tue, 12 Apr 2022 22:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hzoWsZ9MRR8n; Tue, 12 Apr 2022 22:44:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id BBE4782EBA;
	Tue, 12 Apr 2022 22:44:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6722DC0088;
	Tue, 12 Apr 2022 22:44:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F2A3BC002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 22:44:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CCA024179B
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 22:44:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vwboVI8RH_Vs for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 22:44:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 30FA640338
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 22:44:04 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id p15so423833ejc.7
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 15:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=50psdwGjwNe2pJ4DSaYhTcmVWCoftD7MRjYtXnX2qCQ=;
 b=tXCAoxKSY4Ym7sDR97jqh3BbTpQidmXYx7wKwDDzkLiS7MtelzXSP8Z4qGMStp6A7+
 S18qwHVIN7/frrWjKDVuOEja7Ij5PvQ6WxKFWzaqcUhIpQyoidroi/uvA3hlR/StVx29
 cH8trN/NlalcyzsSkKsvmrSqZ2EA0a4hg/88tJS9z5E6vm99DRepSQHKt4omQHBXZHC0
 vqKDdQqWaMip6jY4kP0EbQJ+sVs5jmK6cEaK7VUPtCsRFqn3/F2ODTZN5gcgENOQDcpL
 kqrkK+ykI98L6hKYpgJqL68vx9WMM4hZcC/RpxbkvtK8nnlNIPeRaEEaeomyjozFuvVE
 aQFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=50psdwGjwNe2pJ4DSaYhTcmVWCoftD7MRjYtXnX2qCQ=;
 b=VzkqbhHDOY9oQD9X6M4+vK/fCM1QrwakIAzBZ5uIwKwAw8BS9/MVecIELmH2lURmGa
 9kjf80IECSUw/nFx8rqUBPL4W+RVx8JpP7MZheNPgDyjRhJwPScqO8g1zumk4zmwXbcK
 wxkcRS4nfUqZzUt8Fg7zK9IFMtIfgVFFhAKSTHqQKlrE80eV55IeRJhnuFEaxfCzlRXY
 JOKvf++PdWnky2TnGbT8UM/hnFZhxcWsUmpJrI2Kjy+uu6DwlLDxYqHgCjQsErgJUTVK
 EC61HKDDdSDjEWDdatj46bDyPm68WQHF6JkdP/gadsH6xX+WRgk7anL6eQYeGtDwN93z
 8bJA==
X-Gm-Message-State: AOAM532g4Sl3/+CtGQpxsHnelhl3Ddb+tghr9SoJ1m/glk5i5Gf3OYqE
 98rr5CY9OX0SDpmQFwXFRT1ECw==
X-Google-Smtp-Source: ABdhPJxE4iKbNvDhDVMQeLJbqg/31SAcqzKvuYP0RXlSoil6r/9rtWKHoamMp12mFPNAsufP74ldXQ==
X-Received: by 2002:a17:907:6e1c:b0:6e8:8037:a49d with SMTP id
 sd28-20020a1709076e1c00b006e88037a49dmr13856049ejc.752.1649803442140; 
 Tue, 12 Apr 2022 15:44:02 -0700 (PDT)
Received: from [192.168.0.117] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 a1-20020a50da41000000b0041c83587300sm353890edk.36.2022.04.12.15.44.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Apr 2022 15:44:01 -0700 (PDT)
Message-ID: <6c8e95fc-ce18-08ab-7d6a-cc345a641dc2@blackwall.org>
Date: Wed, 13 Apr 2022 01:44:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: netdev@vger.kernel.org
References: <20220412132245.2148794-1-razor@blackwall.org>
 <20220412132245.2148794-5-razor@blackwall.org>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220412132245.2148794-5-razor@blackwall.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: dsahern@kernel.org, bridge@lists.linux-foundation.org, idosch@idosch.org,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v3 4/8] net: bridge: fdb: add
	ndo_fdb_del_bulk
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

On 4/12/22 16:22, Nikolay Aleksandrov wrote:
> Add a minimal ndo_fdb_del_bulk implementation which flushes all entries.
> Support for more fine-grained filtering will be added in the following
> patches.
> 
> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
> ---
>   net/bridge/br_device.c   |  1 +
>   net/bridge/br_fdb.c      | 25 ++++++++++++++++++++++++-
>   net/bridge/br_netlink.c  |  2 +-
>   net/bridge/br_private.h  |  6 +++++-
>   net/bridge/br_sysfs_br.c |  2 +-
>   5 files changed, 32 insertions(+), 4 deletions(-)
> 
> diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
> index 8d6bab244c4a..58a4f70e01e3 100644
> --- a/net/bridge/br_device.c
> +++ b/net/bridge/br_device.c
> @@ -465,6 +465,7 @@ static const struct net_device_ops br_netdev_ops = {
>   	.ndo_fix_features        = br_fix_features,
>   	.ndo_fdb_add		 = br_fdb_add,
>   	.ndo_fdb_del		 = br_fdb_delete,
> +	.ndo_fdb_del_bulk	 = br_fdb_delete_bulk,
>   	.ndo_fdb_dump		 = br_fdb_dump,
>   	.ndo_fdb_get		 = br_fdb_get,
>   	.ndo_bridge_getlink	 = br_getlink,
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index 6ccda68bd473..fd7012c32cd5 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -559,7 +559,7 @@ void br_fdb_cleanup(struct work_struct *work)
>   }
>   
>   /* Completely flush all dynamic entries in forwarding database.*/
> -void br_fdb_flush(struct net_bridge *br)
> +void __br_fdb_flush(struct net_bridge *br)

hmm, actually the rename is not really necessary with the new naming

