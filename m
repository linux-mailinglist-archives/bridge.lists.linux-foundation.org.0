Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B90FD21F267
	for <lists.bridge@lfdr.de>; Tue, 14 Jul 2020 15:24:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70F4689049;
	Tue, 14 Jul 2020 13:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IpW5AovIx4it; Tue, 14 Jul 2020 13:24:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1068A89036;
	Tue, 14 Jul 2020 13:24:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 05827C0733;
	Tue, 14 Jul 2020 13:24:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 325EDC0733
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 210208A4F6
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NFdeF3CO9v6b for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jul 2020 13:24:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 727A98A435
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:24:36 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id o11so21609811wrv.9
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 06:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=2sXAyH2m1w6ieNvR8PlkbC1BL11rhRAw2ti7qH59UIk=;
 b=Kl2lrL3Abc1ANv3aD2FNLXwqQb4N0zaedWW+aDbDZbBcq+z8HoFtGrJhEQyeNVKJVW
 T1ts0UT2jqRDOVwPTO1wBEJvKRGWtU/gjBbV92tCCDrj5HgYjA7QGmlv5mEFVK3919ll
 rzQEzgwilHSVIiERhHPpxgdROpeCO2i9V1Qm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2sXAyH2m1w6ieNvR8PlkbC1BL11rhRAw2ti7qH59UIk=;
 b=gTJPA/DXzZMYCxG3mTtH075PhrMA3+vb5H5Pxv/ROAKAbjeD9S7zWPc5RumQ3jED1H
 zAgirn+YPrk9CQaMSiNGfbjsLy9mgBMGp0Oma0zouaMKfeRSJ3kyT3IPIXsFceLk+xSp
 c0DqDUmcldndBMlVpBbkHueBZqxs64z2ToZvg9Azj2Zu/AM6oQNZj6a0I7VJHnK9VA9T
 KkYkphsejhgv/2iD0FQvwjVZhOFjk5ysqwns8FyI+md47dN1An3xZ8IV+4PYmRQzlJ2M
 Uue+KI6JKl+FLQUK0/0oh1o1AMa2BT5uTaQmmiqeKA85wqvEP2Bva28hLUmxGLpf1mdQ
 aqSQ==
X-Gm-Message-State: AOAM531qYV+wweYO8XRJq/o093PUR+KT2ZFq2W5tx/CN9jSH7EzSdzBy
 O50gPSaFMxyhvG4JXkAIbVR8M0Nfio7EBw==
X-Google-Smtp-Source: ABdhPJwyV3o8PVnSWMM85wj0QBr9HZqOJ+FQSFUpgZleNIYi2CNzHvbFQy2EqHJQ/fw87gKc6/tWMg==
X-Received: by 2002:adf:ff8d:: with SMTP id j13mr5353827wrr.11.1594733074655; 
 Tue, 14 Jul 2020 06:24:34 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id p4sm31152963wrx.63.2020.07.14.06.24.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jul 2020 06:24:34 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, jiri@resnulli.us, ivecera@redhat.com,
 andrew@lunn.ch, UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200714073458.1939574-1-horatiu.vultur@microchip.com>
 <20200714073458.1939574-11-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <d30bc0f1-b64c-2bf1-fb0f-7ba1f190c4b9@cumulusnetworks.com>
Date: Tue, 14 Jul 2020 16:24:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200714073458.1939574-11-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v4 10/12] bridge: uapi: mrp: Extend
 MRP_INFO attributes for interconnect status
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

On 14/07/2020 10:34, Horatiu Vultur wrote:
> Extend the existing MRP_INFO to return status of MRP interconnect. In
> case there is no MRP interconnect on the node then the role will be
> disabled so the other attributes can be ignored.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/uapi/linux/if_bridge.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> index d840a3e37a37c..c1227aecd38fd 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h
> @@ -243,6 +243,11 @@ enum {
>  	IFLA_BRIDGE_MRP_INFO_TEST_INTERVAL,
>  	IFLA_BRIDGE_MRP_INFO_TEST_MAX_MISS,
>  	IFLA_BRIDGE_MRP_INFO_TEST_MONITOR,
> +	IFLA_BRIDGE_MRP_INFO_I_IFINDEX,
> +	IFLA_BRIDGE_MRP_INFO_IN_STATE,
> +	IFLA_BRIDGE_MRP_INFO_IN_ROLE,
> +	IFLA_BRIDGE_MRP_INFO_IN_TEST_INTERVAL,
> +	IFLA_BRIDGE_MRP_INFO_IN_TEST_MAX_MISS,
>  	__IFLA_BRIDGE_MRP_INFO_MAX,
>  };
>  
> 

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>


