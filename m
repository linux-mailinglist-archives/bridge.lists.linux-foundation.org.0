Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4922921F288
	for <lists.bridge@lfdr.de>; Tue, 14 Jul 2020 15:30:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADDD8890C5;
	Tue, 14 Jul 2020 13:30:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yw3LPM4ORGPw; Tue, 14 Jul 2020 13:30:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF0D4890D9;
	Tue, 14 Jul 2020 13:30:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A2537C0733;
	Tue, 14 Jul 2020 13:30:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EE7E3C0733
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA7C62ECA8
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m2wXdGQkIsZs for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jul 2020 13:30:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 2EB872EC5A
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:30:04 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id o11so21642121wrv.9
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 06:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=aTJ3Rcwa/grjzVIqzKxKgdaenS1CE6YbOTpZIMshk7Q=;
 b=MtRuyZA8wAUOQH0SLfWm2UNNYnjptVw+pJPfiXxotJo3wrtwQRLpbEMxQQTuF8raxF
 WJuJjCmNl4kWnJzBoUNhuKk+AC3ZK/f4GS+Mj00uVX1r+SdtAp5EgcVN11d+gOPUBZw9
 ZJlhE9j2mHJI8UXLBmLsdePeGc7Mp4LXa3RNQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aTJ3Rcwa/grjzVIqzKxKgdaenS1CE6YbOTpZIMshk7Q=;
 b=LMYkQLRpZB84PBa7GH0Y/O3jjTZSCZtvwTT2Tfg/oN7YDE8dWepnYf6Mc/XNa04N8a
 WdZ4E+l4XeE9zSGAp/L/EF0RorG1hocJXTDo3oQFN3xNlfV+DXDSTGlz5AdkAvQXqJDO
 lCY2LJLp9pepW9zoMWT/dQaTL5IKlmcorQVd34DMwe4jVS6aHKIB3PrTM5huLuc/C0+P
 DMtJu+gny6ljVK+k1AE61cmmplH0aAt1L6kV1uQUyWQSCpXGCIleoZ4pjjVRikffbLls
 oYmzcRP7cS/5NY2Q+/KTsufChbtcaCeftLx1IIUERvcziVEm70eSuxQla1lMrEEGTmFf
 w20g==
X-Gm-Message-State: AOAM532CMeOfclTceMp51yLNgdPXCCIQpJk2nqJc7udJJ1jB1W3JaL9W
 xmruhwCSsKij8UN1wUG0gc/PUu3NdErdmw==
X-Google-Smtp-Source: ABdhPJwx92NGJ6juyq9L3CkGoI/9dISLiqb98fnDN5Dz2vU/bXwlxekp7ivCpc2klxVg1F0urn9YNA==
X-Received: by 2002:a5d:518a:: with SMTP id k10mr5371438wrv.316.1594733402366; 
 Tue, 14 Jul 2020 06:30:02 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 92sm31481023wrr.96.2020.07.14.06.30.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jul 2020 06:30:01 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, jiri@resnulli.us, ivecera@redhat.com,
 andrew@lunn.ch, UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200714073458.1939574-1-horatiu.vultur@microchip.com>
 <20200714073458.1939574-2-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <a90c8980-fb9f-2bf2-16d2-c9878ce55cf3@cumulusnetworks.com>
Date: Tue, 14 Jul 2020 16:30:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200714073458.1939574-2-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v4 01/12] switchdev: mrp: Extend
 switchdev API for MRP Interconnect
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
> Extend switchdev API to add support for MRP interconnect. The HW is
> notified in the following cases:
> 
> SWITCHDEV_OBJ_ID_IN_ROLE_MRP: This is used when the interconnect role
>   of the node changes. The supported roles are MIM and MIC.
> 
> SWITCHDEV_OBJ_ID_IN_STATE_MRP: This is used when the interconnect ring
>   changes it states to open or closed.
> 
> SWITCHDEV_OBJ_ID_IN_TEST_MRP: This is used to start/stop sending
>   MRP_InTest frames on all MRP ports. This is called only on nodes that
>   have the interconnect role MIM.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/net/switchdev.h | 38 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 

Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

> diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> index b8c059b4e06d9..ff22469143013 100644
> --- a/include/net/switchdev.h
> +++ b/include/net/switchdev.h
> @@ -76,6 +76,10 @@ enum switchdev_obj_id {
>  	SWITCHDEV_OBJ_ID_RING_TEST_MRP,
>  	SWITCHDEV_OBJ_ID_RING_ROLE_MRP,
>  	SWITCHDEV_OBJ_ID_RING_STATE_MRP,
> +	SWITCHDEV_OBJ_ID_IN_TEST_MRP,
> +	SWITCHDEV_OBJ_ID_IN_ROLE_MRP,
> +	SWITCHDEV_OBJ_ID_IN_STATE_MRP,
> +
>  #endif
>  };
>  
> @@ -155,6 +159,40 @@ struct switchdev_obj_ring_state_mrp {
>  #define SWITCHDEV_OBJ_RING_STATE_MRP(OBJ) \
>  	container_of((OBJ), struct switchdev_obj_ring_state_mrp, obj)
>  
> +/* SWITCHDEV_OBJ_ID_IN_TEST_MRP */
> +struct switchdev_obj_in_test_mrp {
> +	struct switchdev_obj obj;
> +	/* The value is in us and a value of 0 represents to stop */
> +	u32 interval;
> +	u32 in_id;
> +	u32 period;
> +	u8 max_miss;
> +};
> +
> +#define SWITCHDEV_OBJ_IN_TEST_MRP(OBJ) \
> +	container_of((OBJ), struct switchdev_obj_in_test_mrp, obj)
> +
> +/* SWICHDEV_OBJ_ID_IN_ROLE_MRP */
> +struct switchdev_obj_in_role_mrp {
> +	struct switchdev_obj obj;
> +	struct net_device *i_port;
> +	u32 ring_id;
> +	u16 in_id;
> +	u8 in_role;
> +};
> +
> +#define SWITCHDEV_OBJ_IN_ROLE_MRP(OBJ) \
> +	container_of((OBJ), struct switchdev_obj_in_role_mrp, obj)
> +
> +struct switchdev_obj_in_state_mrp {
> +	struct switchdev_obj obj;
> +	u32 in_id;
> +	u8 in_state;
> +};
> +
> +#define SWITCHDEV_OBJ_IN_STATE_MRP(OBJ) \
> +	container_of((OBJ), struct switchdev_obj_in_state_mrp, obj)
> +
>  #endif
>  
>  typedef int switchdev_obj_dump_cb_t(struct switchdev_obj *obj);
> 

