Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C065B1AEABE
	for <lists.bridge@lfdr.de>; Sat, 18 Apr 2020 10:11:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8C5C8227AD;
	Sat, 18 Apr 2020 08:11:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id on81nIktUAw0; Sat, 18 Apr 2020 08:11:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id E98F7227B1;
	Sat, 18 Apr 2020 08:11:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C1EE9C0172;
	Sat, 18 Apr 2020 08:11:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CC7E5C1D87
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 08:11:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B5F6622785
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 08:11:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UVzFQPc+rWR4 for <bridge@lists.linux-foundation.org>;
 Sat, 18 Apr 2020 08:11:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E3782041A
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 08:11:26 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id j3so4401557ljg.8
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 01:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=WYFITaaT1BncDtNMM/RoDBsqGjAFkSfw0DOTJFDWPi0=;
 b=XG1RcADnklId5AQ2Mf+qLBIdYcwOp7cqlnm8mCfZsA020g9D87x2oFiiuDbX8l4oEi
 aIHw/qAdH/QGt1gVsAB6GpbRwjd1em5990YrvZmxYaIqvd9QGjlygV+tl7G2Qnm8xpZO
 uZMgkEYo7wuqbjCqDWAAmjxTzABqX7lNpTe14=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WYFITaaT1BncDtNMM/RoDBsqGjAFkSfw0DOTJFDWPi0=;
 b=bieKHMdfDYvWDMPh8znGFEoSKou49oQSi1fNNuwJPWYYbIQYx4xxkaVw2pIKriw4MS
 rzk+BJsi+O5sJBbwSqDhWWxIoQHmHQElTw9HhFpvptScvWhMEgVO9/QqRCXoxRg9FCJH
 FOegHZO+K5XGE3ySkHUmg3TFoaY9ScQcszIvd/85WoURL/CR5oLm0M7Vu1E9m2RgIDgh
 4yolY297enEl8OfV01l9qAZ36twDRbNj8c8NW6KMF6zdGMhGQKjX6LTeTYpqbRKTLl4o
 syCsOcjrFV3Ru6d7xMZSXx7+cOkmfnpt6eYwXBtl7JuPE66o0KwNqOqxZcVYHLhwDQlC
 YWjA==
X-Gm-Message-State: AGi0PuYBfX6tzjZ8r5D7UNyi4CcYY4RpBkt0+8+miDbxduNJqfNikDee
 i2H6iqeoQMetuJ8nAF/GYCg02A==
X-Google-Smtp-Source: APiQypI8M/7d9Z+0gooRguYMX/NZnTmW2MvF76AoBKyJf7m18GTUBATnblM1vF4oewGsuDTLAXtEBA==
X-Received: by 2002:a2e:6a0e:: with SMTP id f14mr4464414ljc.102.1587197484276; 
 Sat, 18 Apr 2020 01:11:24 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id c203sm20185006lfd.38.2020.04.18.01.11.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Apr 2020 01:11:23 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, UNGLinuxDriver@microchip.com
References: <20200414112618.3644-1-horatiu.vultur@microchip.com>
 <20200414112618.3644-4-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <2b387697-0e4c-7d8a-ae52-d1e8ce1f6bf4@cumulusnetworks.com>
Date: Sat, 18 Apr 2020 11:11:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200414112618.3644-4-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [RFC net-next v5 3/9] bridge: mrp: Expose function
 br_mrp_port_open
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

On 14/04/2020 14:26, Horatiu Vultur wrote:
> In case the HW is capable to detect when the MRP ring is open or closed. It is
> expected that the network driver will notify the SW that the ring is open or
> closed.
> 
> The function br_mrp_port_open is used to notify the kernel that one of the ports
> stopped receiving MRP_Test frames. The argument 'loc' has a value of '1' when
> the port stopped receiving MRP_Test and '0' when it started to receive MRP_Test.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/linux/mrp_bridge.h | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>  create mode 100644 include/linux/mrp_bridge.h
> 
> diff --git a/include/linux/mrp_bridge.h b/include/linux/mrp_bridge.h
> new file mode 100644
> index 000000000000..23d46b356263
> --- /dev/null
> +++ b/include/linux/mrp_bridge.h
> @@ -0,0 +1,24 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
> +#ifndef _LINUX_MRP_BRIDGE_H
> +#define _LINUX_MRO_BRIDGE_H
> +
> +#include <linux/netdevice.h>
> +
> +/* The drivers are responsible to call this function when it detects that the
> + * MRP port stopped receiving MRP_Test frames or it started to receive MRP_Test.
> + * The argument dev represents the port and loc(Lost of Continuity) has a value
> + * of 1 when it stopped receiving MRP_Test frames and a value of 0 when it
> + * started to receive frames.
> + *
> + * This eventually notify the userspace which is required to react on these
> + * changes.
> + */
> +
> +#if IS_ENABLED(CONFIG_BRIDGE_MRP)
> +int br_mrp_port_open(struct net_device *dev, u8 loc);
> +#else
> +inline int br_mrp_port_open(struct net_device *dev, u8 loc)  {}

static and put {} on their own, check how such functions are defined in other places (e.g. br_private.h)
but in general I think you can drop this function favor of br_ifinfo_notify(). More about that in my review
of next patches.

> +#endif
> +
> +#endif
> 

