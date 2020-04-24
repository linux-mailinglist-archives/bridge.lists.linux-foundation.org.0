Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FD21B76A7
	for <lists.bridge@lfdr.de>; Fri, 24 Apr 2020 15:12:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2094885D3;
	Fri, 24 Apr 2020 13:12:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wU8tWiGLZyfe; Fri, 24 Apr 2020 13:12:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id B84F18700D;
	Fri, 24 Apr 2020 13:12:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 98FF9C0175;
	Fri, 24 Apr 2020 13:12:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B582EC0175
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:12:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A3F31885D3
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:12:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dH3N2aBYeqpy for <bridge@lists.linux-foundation.org>;
 Fri, 24 Apr 2020 13:12:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CAB438700D
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:12:42 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id g4so9914926ljl.2
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 06:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=RGGRDHQXBK1Kdt01wMsi8QUeYk6tmntpaLA8lOBA4Cc=;
 b=AFGvXf/LbemwYbd/hy+qejDSTYCV2URKhbr5e0DiAh1ZiILkYDSFqTBcT5tJYz5/Y8
 tVlneqaJEGCJNVIFOPLB8vA3SkGLzyn26pgKO0KsuH0iVCHuPT9JOGtJ1za0TLc0mXdm
 MG9J4Ep6CknCQScPkd7eE+E+7hCYPtYZzwxPE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RGGRDHQXBK1Kdt01wMsi8QUeYk6tmntpaLA8lOBA4Cc=;
 b=JalY+vBzTpVLnUurlamPgADWgeZzgrQjWApv+VlTM3pYi0QE86IypR0lsskX+Bye1c
 6nW0+uLubzPSW0irR9hHi/zPA+nULj9XVSZBYtCwiVm/V4BHuPXFW3rtMwkZtmvPcl+B
 PmRkhQtJGEgGGG2O7mSYjcMYOm0wRll3uRZqyVtd09Fyf2rkgHhO2PAhmNDoseS2WklS
 40GAY0DvM7V5ARIYZGEbSsc0Nt8Yoi66qJfS19XV6Jkyav5DZKACmg4yXAKMQYaQiqKy
 4OJ5JfVy8Kru7me52hqzIW24ZPYn28o7C91Rp77zhDWHO2vY8qW5OBKoPir7oZl25Oq5
 cUOg==
X-Gm-Message-State: AGi0PuahUaCWxojwZ2a6gh0OPdg5uJcXnLcydzwwd+zfmMbh/fB51QqJ
 /RxhLlrv6JkeJIdyFc0wdi8fJWzRnOqkrQ==
X-Google-Smtp-Source: APiQypJu8UJHr3mOPhMTc2LzrFAo02CL8t2odBY6ea//tcWLs3qW6OFhDkiS1sMgJl+l6HRvxBDq0Q==
X-Received: by 2002:a2e:5746:: with SMTP id r6mr5806700ljd.15.1587733960629;
 Fri, 24 Apr 2020 06:12:40 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 12sm3196578ljq.0.2020.04.24.06.12.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2020 06:12:39 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 UNGLinuxDriver@microchip.com, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200422161833.1123-1-horatiu.vultur@microchip.com>
 <20200422161833.1123-5-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <1f2767bf-8ca4-781f-b35a-1ed5a169c206@cumulusnetworks.com>
Date: Fri, 24 Apr 2020 16:12:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200422161833.1123-5-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v3 04/11] net: bridge: Add port
 attribute IFLA_BRPORT_MRP_RING_OPEN
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
> This patch adds a new port attribute, IFLA_BRPORT_MRP_RING_OPEN, which allows
> to notify the userspace when the port lost the continuite of MRP frames.
> 
> This attribute is set by kernel whenever the SW or HW detects that the ring is
> being open or closed.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/uapi/linux/if_link.h       | 1 +
>  net/bridge/br_netlink.c            | 3 +++
>  tools/include/uapi/linux/if_link.h | 1 +
>  3 files changed, 5 insertions(+)
> 
> diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> index 61e0801c82df..4a295deb933b 100644
> --- a/include/uapi/linux/if_link.h
> +++ b/include/uapi/linux/if_link.h
> @@ -343,6 +343,7 @@ enum {
>  	IFLA_BRPORT_NEIGH_SUPPRESS,
>  	IFLA_BRPORT_ISOLATED,
>  	IFLA_BRPORT_BACKUP_PORT,
> +	IFLA_BRPORT_MRP_RING_OPEN,
>  	__IFLA_BRPORT_MAX
>  };
>  #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 43dab4066f91..4084f1ef8641 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -151,6 +151,7 @@ static inline size_t br_port_info_size(void)
>  		+ nla_total_size(sizeof(u8))	/* IFLA_BRPORT_MULTICAST_ROUTER */
>  #endif
>  		+ nla_total_size(sizeof(u16))	/* IFLA_BRPORT_GROUP_FWD_MASK */
> +		+ nla_total_size(sizeof(u8))	/* IFLA_BRPORT_MRP_RING_OPEN */
>  		+ 0;
>  }
>  
> @@ -213,6 +214,8 @@ static int br_port_fill_attrs(struct sk_buff *skb,
>  	    nla_put_u16(skb, IFLA_BRPORT_GROUP_FWD_MASK, p->group_fwd_mask) ||
>  	    nla_put_u8(skb, IFLA_BRPORT_NEIGH_SUPPRESS,
>  		       !!(p->flags & BR_NEIGH_SUPPRESS)) ||
> +	    nla_put_u8(skb, IFLA_BRPORT_MRP_RING_OPEN, !!(p->flags &
> +							  BR_MRP_LOST_CONT)) ||
>  	    nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)))
>  		return -EMSGSIZE;
>  
> diff --git a/tools/include/uapi/linux/if_link.h b/tools/include/uapi/linux/if_link.h
> index 024af2d1d0af..70dae9ba16f4 100644
> --- a/tools/include/uapi/linux/if_link.h
> +++ b/tools/include/uapi/linux/if_link.h
> @@ -343,6 +343,7 @@ enum {
>  	IFLA_BRPORT_NEIGH_SUPPRESS,
>  	IFLA_BRPORT_ISOLATED,
>  	IFLA_BRPORT_BACKUP_PORT,
> +	IFLA_BRPORT_MRP_RING_OPEN,
>  	__IFLA_BRPORT_MAX
>  };
>  #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
> 

Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

