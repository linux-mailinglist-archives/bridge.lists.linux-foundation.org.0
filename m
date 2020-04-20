Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C31391B1308
	for <lists.bridge@lfdr.de>; Mon, 20 Apr 2020 19:30:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2733A8708C;
	Mon, 20 Apr 2020 17:30:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 60TVed0ObMZL; Mon, 20 Apr 2020 17:30:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32869871C0;
	Mon, 20 Apr 2020 17:30:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1030EC0177;
	Mon, 20 Apr 2020 17:30:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9B30BC0177
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 17:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 867CB8639F
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 17:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kyHwPdGUmo3d for <bridge@lists.linux-foundation.org>;
 Mon, 20 Apr 2020 17:30:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7DDC68607A
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 17:30:39 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id g4so2792294ljl.2
 for <bridge@lists.linux-foundation.org>; Mon, 20 Apr 2020 10:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=1wjTQ8kSFEtHQTXiFNn5xmo0XMmmUMj65r7WNBjKJEs=;
 b=NXWy+rZceFxcX4Q1BJl0H6GFSnc8ZUNALstxT4T+qvd8/wDRTj6ZJJvxrBNPnQNrqv
 yxCIbphz2+7r3DPHzNv2pmmsU3LBsO8/U8o4rR5OyMC7a/0ye+6Wx/LpBfCxCrhkLoYC
 qjxGOvLw3i7MDYFX+YK+9yRHVnuKJWeB0zWeU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1wjTQ8kSFEtHQTXiFNn5xmo0XMmmUMj65r7WNBjKJEs=;
 b=uPFJJq+igeIFdUKipSNKFjQZ+xpi6g/nGrs5qx4rqc2o4trY7NtCvx9nHf4sRSEW77
 uiTLbF5H8zEIqXyTYjbcyh9mpsNdsINZn259v+NqsAY6uqJXpqQ2c+nzedyi4J5vM77G
 2PgkAAPTyGEMvtd21cAlEQnmtNjeW6WMJb72ZwAKS4TAgbWkVlbHKY6/H+aYC9b+C+a0
 dkPiI1MR/xgvr0KLzmtWvNix4zmMZoL9jzU+X7Nh13adtL1T0i206xZk3IpI7y3cCHXr
 PZr8YVLRq4s5EXZ8s4xyj7OrGaFJAymhdlaXNjpsmh5Ncfk9RP3y74iyzWLVd81Ep2r0
 bJ4w==
X-Gm-Message-State: AGi0PubfERf8b+OaQz9+TtwV/FBZHwzrMoQ1BNpUqkhaW83PYkDHADp+
 SRVu5BMKkVkjVMoz9iFTAGDwHD6tn/AkDw==
X-Google-Smtp-Source: APiQypKQO2gTG7fbfBVsthNRTh8bjAdJR0WFz6Vc4MxI2oM3VrAN/sw/+3NkB9IDtkhdbML676NqOA==
X-Received: by 2002:a05:651c:385:: with SMTP id
 e5mr10993014ljp.208.1587403837014; 
 Mon, 20 Apr 2020 10:30:37 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id d3sm33429lfq.63.2020.04.20.10.30.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 10:30:36 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 UNGLinuxDriver@microchip.com, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200420150947.30974-1-horatiu.vultur@microchip.com>
 <20200420150947.30974-5-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <cc388b70-701c-4600-791b-8170683a7666@cumulusnetworks.com>
Date: Mon, 20 Apr 2020 20:30:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200420150947.30974-5-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next 04/13] bridge: mrp: Expose function
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

On 20/04/2020 18:09, Horatiu Vultur wrote:
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
>  include/linux/mrp_bridge.h | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>  create mode 100644 include/linux/mrp_bridge.h
> 
> diff --git a/include/linux/mrp_bridge.h b/include/linux/mrp_bridge.h
> new file mode 100644
> index 000000000000..61c1f0d395c7
> --- /dev/null
> +++ b/include/linux/mrp_bridge.h
> @@ -0,0 +1,27 @@
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
> + * Needs to be called with rcu_read_lock().
> + *
> + * This eventually notify the userspace which is required to react on these
> + * changes.
> + */
> +
> +#if IS_ENABLED(CONFIG_BRIDGE_MRP)
> +int br_mrp_port_open(struct net_device *dev, u8 loc);
> +#else
> +static inline int br_mrp_port_open(struct net_device *dev, u8 loc)
> +{
> +}
> +#endif
> +
> +#endif
> 

I see that in order to pass this "loc" to br_ifinfo_notify() you add a new port variable,
but it's a boolean, so you can just use the port flags for it which will simplify things a lot
and remove some ifdefs along the way. And please rename it to something longer (so it's easier
to get what it does).

One question - now that it's always sent to user-space as IFLA_BRPORT_MRP_RING_OPEN attribute
wouldn't it be a problem, or is it read as a current state?
I mean you'll receive that attribute about a port even if you get a completely unrelated to MRP
notification (e.g. about a vlan change).

Thanks,
 Nik
