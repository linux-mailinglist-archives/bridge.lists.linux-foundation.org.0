Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9540D11B29D
	for <lists.bridge@lfdr.de>; Wed, 11 Dec 2019 16:38:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4B2E586276;
	Wed, 11 Dec 2019 15:38:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uQ1KMyz1VYSg; Wed, 11 Dec 2019 15:38:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCA0986B4F;
	Wed, 11 Dec 2019 15:38:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B9488C1796;
	Wed, 11 Dec 2019 15:38:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 73786C0881
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 15:38:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 63265869E1
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 15:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dvvVesOYaQZx for <bridge@lists.linux-foundation.org>;
 Wed, 11 Dec 2019 15:38:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C1DB786276
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 15:38:19 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id s2so23080091iog.10
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 07:38:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=G8NpVJHV6XTeInBWMRdwvp9yp0ay3o9iHO0+lBUDJ/k=;
 b=HGTsLQm4pbK0efQSfWDR/Ipv150Dfu4DvyKt9PYcCWambCrVXtT+xRx9LT2VBy+wCw
 wi5vixOPh4rqvWZ8RtFMAu2vw3bW5BnNG3AFsIT4d74u1A3yqpKfsTQO7MAAnw0W9z4A
 okDV6abRz9G5U0glsOth4Fr3qAiLDUkaUSF37KzOIScH4sl02ItMEJKYfqiexdgYv6YK
 ZyxvJoOzvK8C3SW1tsbdsS/DcrBqU6SmqtAqEpl8ytJ0i1fPGSqmn94z0IDzx5sd5kpc
 pZzwYrtWXwFLmU095Y7qIyPXcqgRKYY6nU+u9gjz01F4PbOGQTdrU4ZwjLJT6CHKpKug
 X6rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=G8NpVJHV6XTeInBWMRdwvp9yp0ay3o9iHO0+lBUDJ/k=;
 b=M4OXAxymG0YTKjZAxONx4ge2146n5W8fdr9xllYx7STdTl8ndtOx2T5xe3Gvdkw5SD
 XGoce8qHVOSWFJIWkxcK1/d+CR0nt5j9Hg2chWE2/b97WsP20h1npr9yfRWcOIlwyzzO
 3A3tJrJBVAPlla24/LndfhF/52EQuZYmgKiyboDaUkFUr93FUcBrnSJhzN0pvC2mn1sa
 23Mfc84KN9yqL0MBIE3dxfnFRyjoyoEkZBlwzEvmfkUdgmAr5DXfp6uVgygNNkQjCcGq
 4JejZGNNXoi/73wotfeW/OzvdVBa+a9tznQ0LoFQvrPztijrD3kqApcF/0e/GGnulMPB
 kMow==
X-Gm-Message-State: APjAAAVX7GLF7JzeWICs3S3eB/qFpg9LpNCQH9tedQPPAagNnQRDAmzH
 YJpGbKHE1AXhZqTVfY4rY3w=
X-Google-Smtp-Source: APXvYqxZ1eMMXge60vDNP2pGKZYBlX+qOpqB/AIMUzBA3EM+uU4HIu3xaEowe8XsLy1otl93qgc+/Q==
X-Received: by 2002:a02:742:: with SMTP id f63mr3705350jaf.138.1576078699070; 
 Wed, 11 Dec 2019 07:38:19 -0800 (PST)
Received: from ?IPv6:2601:282:800:fd80:79bb:41c5:ccad:6884?
 ([2601:282:800:fd80:79bb:41c5:ccad:6884])
 by smtp.googlemail.com with ESMTPSA id 71sm807604ilv.19.2019.12.11.07.38.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 07:38:18 -0800 (PST)
To: Vivien Didelot <vivien.didelot@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
References: <20191210212050.1470909-1-vivien.didelot@gmail.com>
From: David Ahern <dsahern@gmail.com>
Message-ID: <0e45fd22-c31b-a9c2-bf87-22c16a60aeb4@gmail.com>
Date: Wed, 11 Dec 2019 08:38:17 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191210212050.1470909-1-vivien.didelot@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next v2] net: bridge: add STP xstats
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

On 12/10/19 2:20 PM, Vivien Didelot wrote:
> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> index 1b3c2b643a02..e7f2bb782006 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h
> @@ -156,6 +156,15 @@ struct bridge_vlan_xstats {
>  	__u32 pad2;
>  };
>  
> +struct bridge_stp_xstats {
> +	__u64 transition_blk;
> +	__u64 transition_fwd;
> +	__u64 rx_bpdu;
> +	__u64 tx_bpdu;
> +	__u64 rx_tcn;
> +	__u64 tx_tcn;
> +};
> +
>  /* Bridge multicast database attributes
>   * [MDBA_MDB] = {
>   *     [MDBA_MDB_ENTRY] = {
> @@ -261,6 +270,7 @@ enum {
>  	BRIDGE_XSTATS_UNSPEC,
>  	BRIDGE_XSTATS_VLAN,
>  	BRIDGE_XSTATS_MCAST,
> +	BRIDGE_XSTATS_STP,
>  	BRIDGE_XSTATS_PAD,
>  	__BRIDGE_XSTATS_MAX
>  };

Shouldn't the new entry be appended to the end - after BRIDGE_XSTATS_PAD

