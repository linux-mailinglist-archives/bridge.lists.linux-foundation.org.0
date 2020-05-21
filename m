Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA91A1DC85D
	for <lists.bridge@lfdr.de>; Thu, 21 May 2020 10:18:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E491588148;
	Thu, 21 May 2020 08:18:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hY7hS8hqF94S; Thu, 21 May 2020 08:18:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7EE187F6A;
	Thu, 21 May 2020 08:18:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8E48DC0176;
	Thu, 21 May 2020 08:18:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 42834C0176
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 08:18:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3DD0A87F6A
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 08:18:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u97fN7XLvexa for <bridge@lists.linux-foundation.org>;
 Thu, 21 May 2020 08:18:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 490FA87F44
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 08:18:26 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id f134so4829543wmf.1
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 01:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=bqOLOWJcEnmegQMbnR/7WAD5Ory2NkimcCLFj6PkXT4=;
 b=MNKVdqYIQu1sZpEEWrjFHTTAgUy+R5a9ibTbTktvHRxg5WU3UwsT+DYDhAfDTZ1ZVN
 WUkF2IPbZmlF4VcwHRt2g+0rwVYfAWsxUMpNDxOZKs9mfmROSBdrBuvxcGKRLC1byQ50
 gtHo3VrT/HT9vEGVkBYTSpJJxyNB1z1PPj1jQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bqOLOWJcEnmegQMbnR/7WAD5Ory2NkimcCLFj6PkXT4=;
 b=hrFYgHqCmwvy3DfvlSoZ6xCX9ZsSDLm9jF8Kn5kgoiJVgNW8AzFL/aI5Q2281mCwmq
 Ikz/HKlbogY0aCJGv+U8XYef570RdZnXY/F671liO3YpiakuuLuYqdGU62B6xmiGr14+
 5k9L0+1/QHLjh79R5f1trZKd4sgd/lXVrZYPpOpbPYs/KeNPyAG9Ms/tVwuJcPPGN0yP
 i/zxcdRDdMpuRlz5xIFfI2hf/6jmc7orBIl3znwEGfXnNam8jhIai2UozjnO9rV2ngto
 yQ3gTJZJmHO3sRL+oYCXlb0DhPMpUn5BnJmX/UmV4FR3NSvIpSkwddj8HTyzOBADhje4
 8/Yw==
X-Gm-Message-State: AOAM532JkuyZPLV41EJokZ29zqo9UYcUqmJSdAKDoqgLHbh7P7IJ25bt
 yGsYESK4yCM6s4fz1wocyNSzkvtLHPYAEw==
X-Google-Smtp-Source: ABdhPJwnoCs1FS19UI5zCtlLZR/jxDVg7B/c15iE+aCCyvnmoKKyxYyfj6nzMcAhOF8kUgyhShWwQg==
X-Received: by 2002:a1c:2186:: with SMTP id h128mr7558309wmh.108.1590049104333; 
 Thu, 21 May 2020 01:18:24 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id v2sm5840676wrn.21.2020.05.21.01.18.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 01:18:23 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, jiri@resnulli.us,
 ivecera@redhat.com, davem@davemloft.net, kuba@kernel.org,
 roopa@cumulusnetworks.com, andrew@lunn.ch, UNGLinuxDriver@microchip.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20200520130923.3196432-1-horatiu.vultur@microchip.com>
 <20200520130923.3196432-4-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <05ddf496-9f6d-ae23-1bdb-40f0fe0e3b3c@cumulusnetworks.com>
Date: Thu, 21 May 2020 11:18:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200520130923.3196432-4-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH 3/3] bridge: mrp: Restore port state when
 deleting MRP instance
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

On 20/05/2020 16:09, Horatiu Vultur wrote:
> When a MRP instance is deleted, then restore the port according to the
> bridge state. If the bridge is up then the ports will be in forwarding
> state otherwise will be in disabled state.
> 
> Fixes: 9a9f26e8f7ea ("bridge: mrp: Connect MRP API with the switchdev API")
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_mrp.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

> diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> index a5a3fa59c078a..bdd8920c15053 100644
> --- a/net/bridge/br_mrp.c
> +++ b/net/bridge/br_mrp.c
> @@ -229,6 +229,7 @@ static void br_mrp_test_work_expired(struct work_struct *work)
>  static void br_mrp_del_impl(struct net_bridge *br, struct br_mrp *mrp)
>  {
>  	struct net_bridge_port *p;
> +	u8 state;
>  
>  	/* Stop sending MRP_Test frames */
>  	cancel_delayed_work_sync(&mrp->test_work);
> @@ -240,20 +241,24 @@ static void br_mrp_del_impl(struct net_bridge *br, struct br_mrp *mrp)
>  	p = rtnl_dereference(mrp->p_port);
>  	if (p) {
>  		spin_lock_bh(&br->lock);
> -		p->state = BR_STATE_FORWARDING;
> +		state = netif_running(br->dev) ?
> +				BR_STATE_FORWARDING : BR_STATE_DISABLED;
> +		p->state = state;
>  		p->flags &= ~BR_MRP_AWARE;
>  		spin_unlock_bh(&br->lock);
> -		br_mrp_port_switchdev_set_state(p, BR_STATE_FORWARDING);
> +		br_mrp_port_switchdev_set_state(p, state);
>  		rcu_assign_pointer(mrp->p_port, NULL);
>  	}
>  
>  	p = rtnl_dereference(mrp->s_port);
>  	if (p) {
>  		spin_lock_bh(&br->lock);
> -		p->state = BR_STATE_FORWARDING;
> +		state = netif_running(br->dev) ?
> +				BR_STATE_FORWARDING : BR_STATE_DISABLED;
> +		p->state = state;
>  		p->flags &= ~BR_MRP_AWARE;
>  		spin_unlock_bh(&br->lock);
> -		br_mrp_port_switchdev_set_state(p, BR_STATE_FORWARDING);
> +		br_mrp_port_switchdev_set_state(p, state);
>  		rcu_assign_pointer(mrp->s_port, NULL);
>  	}
>  
> 

