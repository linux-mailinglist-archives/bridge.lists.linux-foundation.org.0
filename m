Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6212721F255
	for <lists.bridge@lfdr.de>; Tue, 14 Jul 2020 15:21:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F36638A628;
	Tue, 14 Jul 2020 13:21:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cNHcpeCSKNlD; Tue, 14 Jul 2020 13:21:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8FA188A617;
	Tue, 14 Jul 2020 13:21:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7723FC0891;
	Tue, 14 Jul 2020 13:21:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 56BDBC0733
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:21:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 52AEC8A055
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:21:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1e2NENFIKd7T for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jul 2020 13:21:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4E6A38A051
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:21:33 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id q15so5687600wmj.2
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 06:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=1AJSCaA9AJiVaVMrb6q0a2YgcuNnUrAPsUutkIoBrlE=;
 b=KP7mla+vPb+XSGtSDhi2klcSbIgpVzmppgsD2StJS+NDiLzJ7E/OGviL7c10+sdQX/
 mU2ycPJQQWWN+P+L4NqKX/qCO1qITVeNHjnrHDlbpXz5bQ4rTj2y92hb+Ri54JhUJd3w
 t77cK4dckcMgES3cSg0+yoKpf81Bo6RQ90/04=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1AJSCaA9AJiVaVMrb6q0a2YgcuNnUrAPsUutkIoBrlE=;
 b=Ji0C8xp+s4HEF+axMJjwHy9lxObXZoHu4Ra7lYWngyVeacZzIka12Ga8DxX5/9ERYN
 iKYjsFtHlLmQ+Gez2Rw3fE4wp7SzqL5Z+B6n4JtZ7RCfzEtdRu20La5zFhWqSoaRHg/l
 AKjiUZTy7chww1Njj+dkaGPbCi+CzW1unaMJAkfxBWJMljkQUKHAi7c1hL/MM3tb1dmg
 0wrcx0Xfbsn4/cgD1bYlzza5GtrEirkMr+zO/IwSyUXbAonhq1K0AH47r042GCDTbQEs
 RxTAUqzZeLJZOEiBsK88DypbK5aYqVnmmeY0h2u+uMrDnkqD9ErGYERU9y4GW4m035fo
 8k1w==
X-Gm-Message-State: AOAM533M9aBC225XyakE3yNqICNUSM3EqQ46Tp85vlgxp0otO0XEVUKT
 8r2EMHlNb15xlVLT2eT6MMOI9z/eB8NfGw==
X-Google-Smtp-Source: ABdhPJza0n+wds1kcTU4mseaxPhXB71oAq87NXVGqzW81mFJe4YA93/WPoi2yHUVPLIH5nk0QuU9Ow==
X-Received: by 2002:a1c:9650:: with SMTP id y77mr4422291wmd.101.1594732454603; 
 Tue, 14 Jul 2020 06:14:14 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id v18sm30475537wrv.49.2020.07.14.06.14.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jul 2020 06:14:13 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, jiri@resnulli.us, ivecera@redhat.com,
 andrew@lunn.ch, UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200714073458.1939574-1-horatiu.vultur@microchip.com>
 <20200714073458.1939574-3-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <86fe5d1d-1cda-e832-3ebb-504876ed548a@cumulusnetworks.com>
Date: Tue, 14 Jul 2020 16:14:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200714073458.1939574-3-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v4 02/12] bridge: uapi: mrp: Extend
 MRP attributes for MRP interconnect
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
> Extend the existing MRP netlink attributes to allow to configure MRP
> Interconnect:
> 
> IFLA_BRIDGE_MRP_IN_ROLE - the parameter type is br_mrp_in_role which
>   contains the interconnect id, the ring id, the interconnect role(MIM
>   or MIC) and the port ifindex that represents the interconnect port.
> 
> IFLA_BRIDGE_MRP_IN_STATE - the parameter type is br_mrp_in_state which
>   contains the interconnect id and the interconnect state.
> 
> IFLA_BRIDGE_MRP_IN_TEST - the parameter type is br_mrp_start_in_test
>   which contains the interconnect id, the interval at which to send
>   MRP_InTest frames, how many test frames can be missed before declaring
>   the interconnect ring open and the period which represents for how long
>   to send MRP_InTest frames.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/uapi/linux/if_bridge.h  | 53 +++++++++++++++++++++++++++++++++
>  include/uapi/linux/mrp_bridge.h | 38 +++++++++++++++++++++++
>  2 files changed, 91 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> index c114c1c2bd533..d840a3e37a37c 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h
> @@ -167,6 +167,9 @@ enum {
>  	IFLA_BRIDGE_MRP_RING_ROLE,
>  	IFLA_BRIDGE_MRP_START_TEST,
>  	IFLA_BRIDGE_MRP_INFO,
> +	IFLA_BRIDGE_MRP_IN_ROLE,
> +	IFLA_BRIDGE_MRP_IN_STATE,
> +	IFLA_BRIDGE_MRP_START_IN_TEST,
>  	__IFLA_BRIDGE_MRP_MAX,
>  };
>  
> @@ -245,6 +248,37 @@ enum {
>  
>  #define IFLA_BRIDGE_MRP_INFO_MAX (__IFLA_BRIDGE_MRP_INFO_MAX - 1)
>  
> +enum {
> +	IFLA_BRIDGE_MRP_IN_STATE_UNSPEC,
> +	IFLA_BRIDGE_MRP_IN_STATE_IN_ID,
> +	IFLA_BRIDGE_MRP_IN_STATE_STATE,
> +	__IFLA_BRIDGE_MRP_IN_STATE_MAX,
> +};
> +
> +#define IFLA_BRIDGE_MRP_IN_STATE_MAX (__IFLA_BRIDGE_MRP_IN_STATE_MAX - 1)
> +
> +enum {
> +	IFLA_BRIDGE_MRP_IN_ROLE_UNSPEC,
> +	IFLA_BRIDGE_MRP_IN_ROLE_RING_ID,
> +	IFLA_BRIDGE_MRP_IN_ROLE_IN_ID,
> +	IFLA_BRIDGE_MRP_IN_ROLE_ROLE,
> +	IFLA_BRIDGE_MRP_IN_ROLE_I_IFINDEX,
> +	__IFLA_BRIDGE_MRP_IN_ROLE_MAX,
> +};
> +
> +#define IFLA_BRIDGE_MRP_IN_ROLE_MAX (__IFLA_BRIDGE_MRP_IN_ROLE_MAX - 1)
> +
> +enum {
> +	IFLA_BRIDGE_MRP_START_IN_TEST_UNSPEC,
> +	IFLA_BRIDGE_MRP_START_IN_TEST_IN_ID,
> +	IFLA_BRIDGE_MRP_START_IN_TEST_INTERVAL,
> +	IFLA_BRIDGE_MRP_START_IN_TEST_MAX_MISS,
> +	IFLA_BRIDGE_MRP_START_IN_TEST_PERIOD,
> +	__IFLA_BRIDGE_MRP_START_IN_TEST_MAX,
> +};
> +
> +#define IFLA_BRIDGE_MRP_START_IN_TEST_MAX (__IFLA_BRIDGE_MRP_START_IN_TEST_MAX - 1)
> +
>  struct br_mrp_instance {
>  	__u32 ring_id;
>  	__u32 p_ifindex;
> @@ -270,6 +304,25 @@ struct br_mrp_start_test {
>  	__u32 monitor;
>  };
>  
> +struct br_mrp_in_state {
> +	__u32 in_state;
> +	__u16 in_id;
> +};
> +
> +struct br_mrp_in_role {
> +	__u32 ring_id;
> +	__u32 in_role;
> +	__u32 i_ifindex;
> +	__u16 in_id;
> +};
> +
> +struct br_mrp_start_in_test {
> +	__u32 interval;
> +	__u32 max_miss;
> +	__u32 period;
> +	__u16 in_id;
> +};
> +
>  struct bridge_stp_xstats {
>  	__u64 transition_blk;
>  	__u64 transition_fwd;
> diff --git a/include/uapi/linux/mrp_bridge.h b/include/uapi/linux/mrp_bridge.h
> index bee3665402129..6aeb13ef0b1ec 100644
> --- a/include/uapi/linux/mrp_bridge.h
> +++ b/include/uapi/linux/mrp_bridge.h
> @@ -21,11 +21,22 @@ enum br_mrp_ring_role_type {
>  	BR_MRP_RING_ROLE_MRA,
>  };
>  
> +enum br_mrp_in_role_type {
> +	BR_MRP_IN_ROLE_DISABLED,
> +	BR_MRP_IN_ROLE_MIC,
> +	BR_MRP_IN_ROLE_MIM,
> +};
> +
>  enum br_mrp_ring_state_type {
>  	BR_MRP_RING_STATE_OPEN,
>  	BR_MRP_RING_STATE_CLOSED,
>  };
>  
> +enum br_mrp_in_state_type {
> +	BR_MRP_IN_STATE_OPEN,
> +	BR_MRP_IN_STATE_CLOSED,
> +};
> +
>  enum br_mrp_port_state_type {
>  	BR_MRP_PORT_STATE_DISABLED,
>  	BR_MRP_PORT_STATE_BLOCKED,
> @@ -36,6 +47,7 @@ enum br_mrp_port_state_type {
>  enum br_mrp_port_role_type {
>  	BR_MRP_PORT_ROLE_PRIMARY,
>  	BR_MRP_PORT_ROLE_SECONDARY,
> +	BR_MRP_PORT_ROLE_INTER,
>  };
>  
>  enum br_mrp_tlv_header_type {
> @@ -45,6 +57,10 @@ enum br_mrp_tlv_header_type {
>  	BR_MRP_TLV_HEADER_RING_TOPO = 0x3,
>  	BR_MRP_TLV_HEADER_RING_LINK_DOWN = 0x4,
>  	BR_MRP_TLV_HEADER_RING_LINK_UP = 0x5,
> +	BR_MRP_TLV_HEADER_IN_TEST = 0x6,
> +	BR_MRP_TLV_HEADER_IN_TOPO = 0x7,
> +	BR_MRP_TLV_HEADER_IN_LINK_DOWN = 0x8,
> +	BR_MRP_TLV_HEADER_IN_LINK_UP = 0x9,
>  	BR_MRP_TLV_HEADER_OPTION = 0x7f,
>  };
>  
> @@ -118,4 +134,26 @@ struct br_mrp_oui_hdr {
>  	__u8 oui[MRP_OUI_LENGTH];
>  };
>  
> +struct br_mrp_in_test_hdr {
> +	__be16 id;
> +	__u8 sa[ETH_ALEN];
> +	__be16 port_role;
> +	__be16 state;
> +	__be16 transitions;
> +	__be32 timestamp;
> +};
> +
> +struct br_mrp_in_topo_hdr {
> +	__u8 sa[ETH_ALEN];
> +	__be16 id;
> +	__be16 interval;
> +};
> +
> +struct br_mrp_in_link_hdr {
> +	__u8 sa[ETH_ALEN];
> +	__be16 port_role;
> +	__be16 id;
> +	__be16 interval;
> +};
> +
>  #endif
> 

