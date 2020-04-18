Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A9F1AEAF9
	for <lists.bridge@lfdr.de>; Sat, 18 Apr 2020 10:49:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19C568826F;
	Sat, 18 Apr 2020 08:49:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iFPYTvWKmea9; Sat, 18 Apr 2020 08:49:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 96E998823A;
	Sat, 18 Apr 2020 08:49:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 74A22C1D7E;
	Sat, 18 Apr 2020 08:49:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A3B9AC0172
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 08:49:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 772652041F
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 08:49:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q9FNgvlauiyM for <bridge@lists.linux-foundation.org>;
 Sat, 18 Apr 2020 08:49:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 46F8C203EC
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 08:49:45 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id l11so3764112lfc.5
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 01:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=6JMWvrxsDtQ9ilM24fbTzz0O+inwACTx3EExqxO39Rw=;
 b=OISfzco/7CbYk6TPPk7+8YkHWT0blNPM9zUkdIpx0Qwcb91aQ8KAPlbA1zypwbsk1X
 M2IZSiPc7vIA5BY/c5/Q6XHICoYSPN+TZEBsZEiE7wKPkt75cQFuTxVm90FsDNHQ9upB
 1kIJb0zrVXadd0IP81uRJbDdXjhWJnSwca5u0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6JMWvrxsDtQ9ilM24fbTzz0O+inwACTx3EExqxO39Rw=;
 b=rlugqNfj7SguNTkoOE+fomVm9VflBJ/cButuNvtbvqKNPF9pIJ9w7oRayZS/aH2ipH
 r1Dl25JirCymDqmcB521O+kcfm3bg0cWE9pGyeAazXUN9R9AQBRI3iN5VSCOJefQoDaK
 DXayOtAPTkuaAsaeiqHAV223BFhKAgBWLIsBNw/ojfasOQN4zjEFm/sxduAQk0cF5Yu6
 9U02vLNf5SziENwRLlGuMn2V598AuCjQBBLrH+5AIg6ORopG7yVROy2mhVhYrC2Xi+5J
 7leZAcoszBOM9Vu0L5Jv9wv6qdOYECL0JM83l/o2NnwE1YVcZkpQ0jSFOBXozueorkje
 qf3Q==
X-Gm-Message-State: AGi0PuadZILTxNh2G2/4Nxefu8klteZDXk4UCdPyyq1jhedIQ7cNx9hE
 gDGprFhg4Pz6fBee2Lozh7ZcPg==
X-Google-Smtp-Source: APiQypLmqj5OnHyqza8SkZR6WPy3NfrYePq3we7wW1P7M1KzfkUlSBdmRPPeRKHdNs15ql9bQ222dw==
X-Received: by 2002:a19:c1d3:: with SMTP id r202mr4454730lff.216.1587199783114; 
 Sat, 18 Apr 2020 01:49:43 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 4sm10364947ljf.79.2020.04.18.01.49.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Apr 2020 01:49:42 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, UNGLinuxDriver@microchip.com
References: <20200414112618.3644-1-horatiu.vultur@microchip.com>
 <20200414112618.3644-3-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <b53142fb-9dd3-7ead-7978-6ac5172c8791@cumulusnetworks.com>
Date: Sat, 18 Apr 2020 11:49:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200414112618.3644-3-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [RFC net-next v5 2/9] bridge: mrp: Update Kconfig and
	Makefile
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
> Add the option BRIDGE_MRP to allow to build in or not MRP support.
> The default value is N.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/Kconfig  | 12 ++++++++++++
>  net/bridge/Makefile |  2 ++
>  2 files changed, 14 insertions(+)
> 
> diff --git a/net/bridge/Kconfig b/net/bridge/Kconfig
> index e4fb050e2078..51a6414145d2 100644
> --- a/net/bridge/Kconfig
> +++ b/net/bridge/Kconfig
> @@ -61,3 +61,15 @@ config BRIDGE_VLAN_FILTERING
>  	  Say N to exclude this support and reduce the binary size.
>  
>  	  If unsure, say Y.
> +
> +config BRIDGE_MRP
> +	bool "MRP protocol"
> +	depends on BRIDGE
> +	default n
> +	help
> +	  If you say Y here, then the Ethernet bridge will be able to run MRP
> +	  protocol to detect loops
> +
> +	  Say N to exclude this support and reduce the binary size.
> +
> +	  If unsure, say N.
> diff --git a/net/bridge/Makefile b/net/bridge/Makefile
> index 49da7ae6f077..9bf3e1be3328 100644
> --- a/net/bridge/Makefile
> +++ b/net/bridge/Makefile
> @@ -25,3 +25,5 @@ bridge-$(CONFIG_BRIDGE_VLAN_FILTERING) += br_vlan.o br_vlan_tunnel.o br_vlan_opt
>  bridge-$(CONFIG_NET_SWITCHDEV) += br_switchdev.o
>  
>  obj-$(CONFIG_NETFILTER) += netfilter/
> +
> +bridge-$(CONFIG_BRIDGE_MRP)	+= br_mrp.o br_mrp_netlink.o br_mrp_switchdev.o
> 

This is not bisectable, if you choose Y here you'll be missing some files.

