Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D70E31B7691
	for <lists.bridge@lfdr.de>; Fri, 24 Apr 2020 15:11:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 411B787E57;
	Fri, 24 Apr 2020 13:11:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XiVcn4DmNhRt; Fri, 24 Apr 2020 13:11:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13E8287E6A;
	Fri, 24 Apr 2020 13:11:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EE28AC0175;
	Fri, 24 Apr 2020 13:11:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 88B90C0175
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:11:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 83A1A204D2
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:11:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BLxfbj55yk09 for <bridge@lists.linux-foundation.org>;
 Fri, 24 Apr 2020 13:11:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 85505203DC
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 13:11:25 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id g10so7586337lfj.13
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 06:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=G2uXfV2zQ6YcJDE/jPT/znzd8EhGd4IlBIY8GlaqseU=;
 b=boaoa6QxxZN3lCBv5P/sBvwVlfHCoZjiR0gPpaqf3dyoRwSHGfxFtQStzuk++J/6To
 4n5I0Jvx6fc19Pv+X2xswYOFxMK3keWFmkmu4j8r60wq9yJeXq1wqyMxR2WUlB0Fv38R
 Sk68/ReojCiQxUbN0FG1hf2ZUMLZLX0F3+EAQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=G2uXfV2zQ6YcJDE/jPT/znzd8EhGd4IlBIY8GlaqseU=;
 b=fcaq13kIodjWMb0VdrqCPnYy4PgLe1rV0nnh9jKErNSLFpr9qUMm7yVKY97TWBKYeE
 oVHC344FjPU9gvl97PS6SNTGLGk4TYveS3TZMW6D5SzG5OfJe0MDpo/guqI7ztEMlBNN
 ovp3XK9pMjABdBHFM5HzmqyfWcG2tw4D1TBORPT+o2Xd8ihVZKtBXAGkG3ZptIrtrvRf
 VOrJfmXYGplsgmuH6M7RsUfm5ZLy0N2yA9gbRYGa9iV5PcoGfD48RPcbavAJxmRk11Ia
 Ds/pICkMPIjBGBNKJByx40O+7VzUU+NQKHUTorw+xrthkSk/s6GRrGmCjg5ZGkCc0tl2
 VBIw==
X-Gm-Message-State: AGi0PubXmdKWLH9SeMfQBoZkBL7sK4nCxbuhXKtMDqq2/gzxaHBn1otH
 Z9QZu98VJAL6SmuVMWtOvTn0/Ae4b4EX9w==
X-Google-Smtp-Source: APiQypLSz5FyzC47Rafs0O51HZGYwp2jhTj+lYOAvYPKJ5wYmLjjuBz8V0lWiSfO0U29zYw8ZGkO3A==
X-Received: by 2002:a05:6512:3081:: with SMTP id
 z1mr6229213lfd.102.1587733882939; 
 Fri, 24 Apr 2020 06:11:22 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id e186sm4551183lfd.83.2020.04.24.06.11.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2020 06:11:21 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 UNGLinuxDriver@microchip.com, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200422161833.1123-1-horatiu.vultur@microchip.com>
 <20200422161833.1123-3-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <cfbeabee-8df5-3a50-b43f-8833723b8ed9@cumulusnetworks.com>
Date: Fri, 24 Apr 2020 16:11:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200422161833.1123-3-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v3 02/11] bridge: mrp: Update Kconfig
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
> Add the option BRIDGE_MRP to allow to build in or not MRP support.
> The default value is N.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/Kconfig | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
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
> 

Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

