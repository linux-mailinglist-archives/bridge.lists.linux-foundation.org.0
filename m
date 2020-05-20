Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD981DB8D0
	for <lists.bridge@lfdr.de>; Wed, 20 May 2020 17:57:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 044DB866F0;
	Wed, 20 May 2020 15:56:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EvLHmVV90eHQ; Wed, 20 May 2020 15:56:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE5C5866F6;
	Wed, 20 May 2020 15:56:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A2522C0176;
	Wed, 20 May 2020 15:56:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DDDB2C0176
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 15:56:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B6DCB24804
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 15:56:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gVWfN825vhtw for <bridge@lists.linux-foundation.org>;
 Wed, 20 May 2020 15:56:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by silver.osuosl.org (Postfix) with ESMTPS id D77732048B
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 15:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589990214;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Sno0GmQ/eQv+Rs74eF1UQLVprtgb41HhzSqFhBF9Z8s=;
 b=UGc0n8gsFBKCSOZzkOk4vrC5yRgj8I47bMYFEwPk1eVq3HH0ZUZMOxi5kj2WQ77BLn0Gh9
 wusGfxZ10FWb2xiNcJUdQW1X75P1QNr6Krbi+B5XdUz2E0nkwzy4VgbbMfJaYdG4zu9AyC
 qYyQeVs/w7fSX4FZqSwzwn1uBcuffUA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-30-sIzVUj7MM16DmhemM8TuYQ-1; Wed, 20 May 2020 11:56:52 -0400
X-MC-Unique: sIzVUj7MM16DmhemM8TuYQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF91580183C;
 Wed, 20 May 2020 15:56:50 +0000 (UTC)
Received: from ceranb (unknown [10.40.192.217])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ECE755D9CA;
 Wed, 20 May 2020 15:56:47 +0000 (UTC)
Date: Wed, 20 May 2020 17:56:47 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20200520175647.32e6f5eb@ceranb>
In-Reply-To: <20200520130923.3196432-3-horatiu.vultur@microchip.com>
References: <20200520130923.3196432-1-horatiu.vultur@microchip.com>
 <20200520130923.3196432-3-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Cc: andrew@lunn.ch, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH 2/3] switchdev: mrp: Remove the variable
	mrp_ring_state
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

On Wed, 20 May 2020 13:09:22 +0000
Horatiu Vultur <horatiu.vultur@microchip.com> wrote:

> Remove the variable mrp_ring_state from switchdev_attr because is not
> used anywhere.
> The ring state is set using SWITCHDEV_OBJ_ID_RING_STATE_MRP.
> 
> Fixes: c284b5459008 ("switchdev: mrp: Extend switchdev API to offload MRP")
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/net/switchdev.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> index ae7aeb0d1f9ca..db519957e134b 100644
> --- a/include/net/switchdev.h
> +++ b/include/net/switchdev.h
> @@ -62,7 +62,6 @@ struct switchdev_attr {
>  #if IS_ENABLED(CONFIG_BRIDGE_MRP)
>  		u8 mrp_port_state;			/* MRP_PORT_STATE */
>  		u8 mrp_port_role;			/* MRP_PORT_ROLE */
> -		u8 mrp_ring_state;			/* MRP_RING_STATE */
>  #endif
>  	} u;
>  };

Acked-by: Ivan Vecera <ivecera@redhat.com>

