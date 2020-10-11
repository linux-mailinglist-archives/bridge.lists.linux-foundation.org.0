Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8685728B15B
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35ABA869F0;
	Mon, 12 Oct 2020 09:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aljiUzdcoZNd; Mon, 12 Oct 2020 09:24:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5C4D3869EF;
	Mon, 12 Oct 2020 09:24:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 31D81C0051;
	Mon, 12 Oct 2020 09:24:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C9877C0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 22:30:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AF38786A19
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 22:30:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N0iJeHLrYrqY for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 22:30:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D034C86A0F
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 22:29:59 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id v19so14948387edx.9
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 15:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tQ91KlC16+iOxVZEy8exzFaomSm6trhPKyMZYS/SYiU=;
 b=PP9UpdZvCKxodnhOYk4LuNzIiPq8nQmjYXzFJGBVU8T13xxMaMqw6hOGHhSIaGlu+d
 OKJFfKtjG/RHYeEBg8xLVQfzwZmArdPUU+M3hqJir1FuFbe3V2qVQgmbqzHcDfadfMow
 KUG01+d89GZ2W5VcxD6+k6Lq/1vvDvN/AZGNqX4TbFFmX07qDc5SslLMXEDHqgxi44o6
 m6ZAKXvUGiFzdux3takZtPZYu34B3qtoNricau8sf9dwS3HjhxFdpDw0LRcZEW23XZhi
 YE/SeGnjEHYM9SCIBuyueZ2XT1cTAmDwTrqF2Fz5BAvsAhyxQtaByifhP2a8nynKsRid
 QpOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tQ91KlC16+iOxVZEy8exzFaomSm6trhPKyMZYS/SYiU=;
 b=bIV9QXPa9lwdLx6gtQ4k69be2cFJQlJ7o5Ki78zuLot+2PTe2TrC3ijQxyQ2uO8mmE
 FxRFKXMwrrA8Wogt4oqQ21jChjx9959pOUxRwRv2pCZvloLVA2tixKI9LzauIOLmYneW
 nTzCkoBJYyEwlHqeoDfSnq5pEKS6U/MK2pF/+R6iYE+su9W6LidZUuCl3Blv9yV9uHxv
 LwBpVd4BhwIJF8bue3ZM+B6bDpGITzPkEcK98RW3aJgnYjgBDyloarP2l5EsGuiMEPYW
 slWPHYK7Of9MKychmDd2SxcpcagUs+z60NrZhRArTfyqzl009icMQ62vUyFEdP+g62M5
 8cSQ==
X-Gm-Message-State: AOAM530EL4eIXO2GPzuzKh0RDXpamEMYlIg+IjK+XXRblBURLIY4MHIg
 6WNLwBTnfOhy9L/taJKMLLWw9w1Hjs595w==
X-Google-Smtp-Source: ABdhPJzZaZNRjl8mTC6/3K6Kbe3g6oU5FIaoTuoDQyO1l6FMBXkmLSLzRXLMgs6aJQaBPGs26QkZ+A==
X-Received: by 2002:aa7:d4d8:: with SMTP id t24mr11374732edr.247.1602455398051; 
 Sun, 11 Oct 2020 15:29:58 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:51b7:bf4f:604:7d3d?
 (p200300ea8f006a0051b7bf4f06047d3d.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:51b7:bf4f:604:7d3d])
 by smtp.googlemail.com with ESMTPSA id a13sm9760845edx.53.2020.10.11.15.29.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Oct 2020 15:29:57 -0700 (PDT)
To: Jakub Kicinski <kuba@kernel.org>
References: <a46f539e-a54d-7e92-0372-cd96bb280729@gmail.com>
 <20201011151030.05ad88dd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <1f1dceab-bab0-ff9e-dae6-ed35be504a9c@gmail.com>
Date: Mon, 12 Oct 2020 00:29:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20201011151030.05ad88dd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 12 Oct 2020 09:23:56 +0000
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Sergey Matyukevich <geomatsi@gmail.com>, linux-rdma@vger.kernel.org,
 bridge@lists.linux-foundation.org, Pravin B Shelar <pshelar@ovn.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Igor Mitsyanko <imitsyanko@quantenna.com>, Kalle Valo <kvalo@codeaurora.org>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Oliver Neukum <oneukum@suse.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean <olteanv@gmail.com>,
 David Miller <davem@davemloft.net>,
 =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>
Subject: Re: [Bridge] [PATCH net-next 00/12] net: add and use function
 dev_fetch_sw_netstats for fetching pcpu_sw_netstats
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

On 12.10.2020 00:10, Jakub Kicinski wrote:
> On Sun, 11 Oct 2020 21:34:58 +0200 Heiner Kallweit wrote:
>> In several places the same code is used to populate rtnl_link_stats64
>> fields with data from pcpu_sw_netstats. Therefore factor out this code
>> to a new function dev_fetch_sw_netstats().
> 
> FWIW probably fine to convert nfp_repr_get_host_stats64() as well, just
> take out the drop counter and make it a separate atomic. If you're up
> for that.
> 
Looking at nfp_repr_get_host_stats64() I'm not sure why the authors
decided to add a 64bit tx drop counter, struct net_device_stats has
an unsigned long tx_dropped counter already. And that the number of
dropped tx packets exceeds 32bit (on 32bit systems) seems not very
likely.
