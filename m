Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9031C07DA
	for <lists.bridge@lfdr.de>; Thu, 30 Apr 2020 22:25:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4356286E29;
	Thu, 30 Apr 2020 20:25:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UIYObsq93Qgk; Thu, 30 Apr 2020 20:25:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1AED886F40;
	Thu, 30 Apr 2020 20:25:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EE6D6C016F;
	Thu, 30 Apr 2020 20:25:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 50D15C016F
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 20:25:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3773F87DA8
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 20:25:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H+YJstTwj98a for <bridge@lists.linux-foundation.org>;
 Thu, 30 Apr 2020 20:25:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 95B5387CD9
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 20:25:44 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id w14so2364542lfk.3
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 13:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lJmhJmuG1IWJED6rmkx8pwPYj9TB5d9M3E2doIVmkRs=;
 b=fASOuBt8zE/+5tGQ1qY43ZGmu7xs3H/w9z3Pm/vJuvfUa2asOH8b4HVp+BzFYW2gq9
 k/vAAX9bsEroUhXniLEqBNheSAyqquWOoBWhfRRhPTtM6BNPU/YY6wRnpLXIHX5op9zn
 oX5+7hg/ULQ559d9tT1q7s9x1uq1m04Av3I1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lJmhJmuG1IWJED6rmkx8pwPYj9TB5d9M3E2doIVmkRs=;
 b=qUdppbT03E/1EN3oK10eV2lgXw9Ju0aUdPSc+EF1lEcAGI+MjXaQ4xyGzxGS/bFQfP
 RjF5AC2PzseDq4PqIa/d5eK6djzt2TqxcPe+Et83eeJ3Z/T209MIl37PTQa+P9x57lNT
 nmkrK1/wOPQVEXrrdQXqx8RWICTxom6friyojSaJYwjZmGOpn4O/LZHlEanCvH7n9Ga9
 RLyyJcK1odiSUTezkF86HSVyilWG9wNZa2s4hCiCGpqYD5CYLmOcC6bATHaXsmXFrKo7
 az1ZhsBpp9/r3yXcdDlnIWOey1qunhnUgBjg1TH8pywr+Fu6A5YihZtvxOiBI94DsPJ/
 kbKQ==
X-Gm-Message-State: AGi0PuamJt8x6TVnmNIooNSc8JGC8Y4859r39reFfs7mWnsTb2wLZT0S
 DBvH1hQMgmcFyQHjnUpY4vmilg==
X-Google-Smtp-Source: APiQypLXh16bLr7nrtxsHyK57JkwYRJPJAQr9YrysD+IeYnq/jqeSZIdvMAI24JYBJY2PPX2vk0tqg==
X-Received: by 2002:a05:6512:3f4:: with SMTP id
 n20mr283882lfq.100.1588278342612; 
 Thu, 30 Apr 2020 13:25:42 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id g3sm553096ljj.13.2020.04.30.13.25.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 13:25:42 -0700 (PDT)
To: Ido Schimmel <idosch@idosch.org>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20200430193845.4087868-1-idosch@idosch.org>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <ab70b93d-c296-402e-865f-c96be764e7a3@cumulusnetworks.com>
Date: Thu, 30 Apr 2020 23:25:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200430193845.4087868-1-idosch@idosch.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: mlxsw@mellanox.com, s.priebe@profihost.ag, roopa@cumulusnetworks.com,
 Ido Schimmel <idosch@mellanox.com>, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: vlan: Add a schedule point
 during VLAN processing
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

On 30/04/2020 22:38, Ido Schimmel wrote:
> From: Ido Schimmel <idosch@mellanox.com>
> 
> User space can request to delete a range of VLANs from a bridge slave in
> one netlink request. For each deleted VLAN the FDB needs to be traversed
> in order to flush all the affected entries.
> 
> If a large range of VLANs is deleted and the number of FDB entries is
> large or the FDB lock is contented, it is possible for the kernel to
> loop through the deleted VLANs for a long time. In case preemption is
> disabled, this can result in a soft lockup.
> 
> Fix this by adding a schedule point after each VLAN is deleted to yield
> the CPU, if needed. This is safe because the VLANs are traversed in
> process context.
> 
> Fixes: bdced7ef7838 ("bridge: support for multiple vlans and vlan ranges in setlink and dellink requests")
> Signed-off-by: Ido Schimmel <idosch@mellanox.com>
> Reported-by: Stefan Priebe - Profihost AG <s.priebe@profihost.ag>
> Tested-by: Stefan Priebe - Profihost AG <s.priebe@profihost.ag>
> ---
>  net/bridge/br_netlink.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 43dab4066f91..a0f5dbee8f9c 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -612,6 +612,7 @@ int br_process_vlan_info(struct net_bridge *br,
>  					       v - 1, rtm_cmd);
>  				v_change_start = 0;
>  			}
> +			cond_resched();
>  		}
>  		/* v_change_start is set only if the last/whole range changed */
>  		if (v_change_start)
> 

Looks good, thanks!
Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
