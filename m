Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21857149651
	for <lists.bridge@lfdr.de>; Sat, 25 Jan 2020 16:42:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0AE1864F6;
	Sat, 25 Jan 2020 15:42:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qoj+C482XBDJ; Sat, 25 Jan 2020 15:42:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id E24518682A;
	Sat, 25 Jan 2020 15:42:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BB154C0174;
	Sat, 25 Jan 2020 15:42:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 247A4C0174
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 15:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1724B87E5B
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 15:42:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MP9p2NnTeHRE for <bridge@lists.linux-foundation.org>;
 Sat, 25 Jan 2020 15:42:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 51CDC87E4D
 for <bridge@lists.linux-foundation.org>; Sat, 25 Jan 2020 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GIFd6ldOKuKN0YVghH/yGsAo5WnGw/L9zQieq8ttDrM=; b=1Oo4aMLVL4WOPNGNDBrnGbMuoK
 tOgjZF5dIlA65CSCX1fIDj2OjTpaTZpUJHzukaHXhhvMO+ktwOLkSk3iXzrRoQZCyPIsJ4xv7HtuP
 OCkPowh7h34IKzLSZlUaaKRdRNyZvFZgvC7XRXavUEa6LIfwkqBMteDgU8gam3ZkkcQM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ivNaC-00070X-Hn; Sat, 25 Jan 2020 16:42:48 +0100
Date: Sat, 25 Jan 2020 16:42:48 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20200125154248.GC18311@lunn.ch>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-10-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200124161828.12206-10-horatiu.vultur@microchip.com>
Cc: ivecera@redhat.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, anirudh.venkataramanan@intel.com,
 jeffrey.t.kirsher@intel.com, olteanv@gmail.com, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next v3 09/10] net: bridge: mrp: Integrate
 MRP into the bridge
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

On Fri, Jan 24, 2020 at 05:18:27PM +0100, Horatiu Vultur wrote:
> To integrate MRP into the bridge, the bridge needs to do the following:
> - initialized and destroy the generic netlink used by MRP
> - detect if the MRP frame was received on a port that is part of a MRP ring. In
>   case it was not, then forward the frame as usual, otherwise redirect the frame
>   to the upper layer.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br.c         | 11 +++++++++++
>  net/bridge/br_device.c  |  3 +++
>  net/bridge/br_if.c      |  6 ++++++
>  net/bridge/br_input.c   | 14 ++++++++++++++
>  net/bridge/br_private.h | 14 ++++++++++++++
>  5 files changed, 48 insertions(+)
> 
> diff --git a/net/bridge/br.c b/net/bridge/br.c
> index b6fe30e3768f..d5e556eed4ba 100644
> --- a/net/bridge/br.c
> +++ b/net/bridge/br.c
> @@ -344,6 +344,12 @@ static int __init br_init(void)
>  	if (err)
>  		goto err_out5;
>  
> +#ifdef CONFIG_BRIDGE_MRP
> +	err = br_mrp_netlink_init();
> +	if (err)
> +		goto err_out6;
> +#endif

Please try to avoid #ifdef's like this in C code. Add a stub function
to br_private_mrp.h.

If you really cannot avoid #ifdef, please use #if IS_ENABLED(CONFIG_BRIDGE_MRP).
That expands to

	if (0) {

        }

So the compiler will compile it and then optimize it out. That gives
us added benefit of build testing, we don't suddenly find the code no
longer compiles when we enable the option.

> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -21,6 +21,9 @@
>  #include <linux/rculist.h>
>  #include "br_private.h"
>  #include "br_private_tunnel.h"
> +#ifdef CONFIG_BRIDGE_MRP
> +#include "br_private_mrp.h"
> +#endif

It should always be safe to include a header file.

   Andrew
