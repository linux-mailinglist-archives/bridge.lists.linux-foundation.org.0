Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E501B7690
	for <lists.bridge@lfdr.de>; Fri, 24 Apr 2020 15:11:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3AC81203E3;
	Fri, 24 Apr 2020 13:11:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XH1A-NtbfFT5; Fri, 24 Apr 2020 13:11:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id DEAAE2041B;
	Fri, 24 Apr 2020 13:11:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C50AFC1D7F;
	Fri, 24 Apr 2020 13:11:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2FD00C0175
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:11:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 15E89884F1
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:11:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uyWCZvavkycs for <bridge@lists.linux-foundation.org>;
 Fri, 24 Apr 2020 13:11:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 40AEA8831E
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:11:23 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id a21so9869565ljb.9
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 06:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Gx9hNKg0l/txCpQUT0mCibQINePXOppVz6cuR/nn8AA=;
 b=a5yL4+q452l7JxoNgJo2bhKexP37/cRH1AQbPNfIZSiGptvZXs8q+gLLzv+J8bCwgP
 wUe0NXRCO+V7B6dinuZT8ts9HB26TQv6R+ai4l3w+IiZ9kBnKW9TtG0LY5VjJh+VlJDE
 Pz8EUD4+EsG1qkecWUklJ2Ysmurt3CyRnGygE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Gx9hNKg0l/txCpQUT0mCibQINePXOppVz6cuR/nn8AA=;
 b=Roy4Mdv4Q/oOOzgf7FalZgDT7e715PdJ243ZXrugxseNEx9hLTuopI33B9avryBSUG
 vISZv24YOzXwEpS1smvOTqw7cxAVCjGLIJQcvYc4ZvZcqflo9BtPIXXra4wtx/Oix1Sw
 HA6nS9JGi6mZccYf1Mh8oqgv2UI26KFlaqDSw5STMjzF8qjak5fBBpMsTDj1EKIbjNqk
 HhXWeTuOb1BzOtXHODeDXfCBm6MUKooC5hIrF1Bvvq5E4bdWK7jEWuHBUjpHFvC23GMQ
 W/fBJ56wvOR57bWBgQBdzD1oqT2ETe2e73SFYcBMlFDVucpFNcxini0wPuHpAWGkNf76
 BsDg==
X-Gm-Message-State: AGi0Pubegfqrm94HiXboNXYsyT74sWbAZNFnAjbXhAAArMlotmrJajN3
 64ABakqL8mP0Nnz9E2QqlGzs0eLTAwzzIg==
X-Google-Smtp-Source: APiQypITC7oqv5JpXqxP9F+iKDdOC8YPa8L7rOpho6N7WEoFjOLOscnhdTlFof13kpjX94p2752lVg==
X-Received: by 2002:a2e:9118:: with SMTP id m24mr5951942ljg.172.1587733880848; 
 Fri, 24 Apr 2020 06:11:20 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x21sm4180540ljm.74.2020.04.24.06.11.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2020 06:11:19 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 UNGLinuxDriver@microchip.com, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200422161833.1123-1-horatiu.vultur@microchip.com>
 <20200422161833.1123-2-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <2969c2e1-2ed4-87fd-7053-f70a3f923567@cumulusnetworks.com>
Date: Fri, 24 Apr 2020 16:11:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200422161833.1123-2-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v3 01/11] bridge: uapi: mrp: Add mrp
	attributes.
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

On 22/04/2020 19:18, Horatiu Vultur wrote:
> Add new nested netlink attribute to configure the MRP. These attributes are used
> by the userspace to add/delete/configure MRP instances and by the kernel to
> notify the userspace when the MRP ring gets open/closed. MRP nested attribute
> has the following attributes:
> 
> IFLA_BRIDGE_MRP_INSTANCE - the parameter type is br_mrp_instance which contains
>   the instance id, and the ifindex of the two ports. The ports can't be part of
>   multiple instances. This is used to create/delete MRP instances.
> 
> IFLA_BRIDGE_MRP_PORT_STATE - the parameter type is u32. Which can be forwarding,
>   blocking or disabled.
> 
> IFLA_BRIDGE_MRP_PORT_ROLE - the parameter type is br_mrp_port_role which
>   contains the instance id and the role. The role can be primary or secondary.
> 
> IFLA_BRIDGE_MRP_RING_STATE - the parameter type is br_mrp_ring_state which
>   contains the instance id and the state. The state can be open or closed.
> 
> IFLA_BRIDGE_MRP_RING_ROLE - the parameter type is br_mrp_ring_role which
>   contains the instance id and the ring role. The role can be MRM or MRC.
> 
> IFLA_BRIDGE_MRP_START_TEST - the parameter type is br_mrp_start_test which
>   contains the instance id, the interval at which to send the MRP_Test frames,
>   how many test frames can be missed before declaring the ring open and the
>   period which represent for how long to send the test frames.
> 
> Also add the file include/uapi/linux/mrp_bridge.h which defines all the types
> used by MRP that are also needed by the userpace.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/uapi/linux/if_bridge.h  | 42 +++++++++++++++++
>  include/uapi/linux/if_ether.h   |  1 +
>  include/uapi/linux/mrp_bridge.h | 84 +++++++++++++++++++++++++++++++++
>  3 files changed, 127 insertions(+)
>  create mode 100644 include/uapi/linux/mrp_bridge.h
> 

Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

