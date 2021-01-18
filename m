Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDE42FAD4D
	for <lists.bridge@lfdr.de>; Mon, 18 Jan 2021 23:30:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 73DD585CE2;
	Mon, 18 Jan 2021 22:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jTl51l8HCWGW; Mon, 18 Jan 2021 22:30:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A9258639B;
	Mon, 18 Jan 2021 22:30:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EFF9CC013A;
	Mon, 18 Jan 2021 22:30:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A5C1DC013A
 for <bridge@lists.linux-foundation.org>; Mon, 18 Jan 2021 22:30:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 88C96204F2
 for <bridge@lists.linux-foundation.org>; Mon, 18 Jan 2021 22:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XgqtbEjKxjhr for <bridge@lists.linux-foundation.org>;
 Mon, 18 Jan 2021 22:30:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E10BD204E0
 for <bridge@lists.linux-foundation.org>; Mon, 18 Jan 2021 22:30:01 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2A9B122CAD;
 Mon, 18 Jan 2021 22:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611009001;
 bh=AB2pnIpG2vO9SbQwThxOJlZMOhzUueP38fYONle5nu8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EkyqWWx9ZGxBf0F4H8YcVO2dGD3h6JWFvj2coy1jElnmxt9Fg6LLu7CWVXB4hVZLF
 I97vcgMowDUHoODCHw61V/DHHOvBP9JTMFPtv573RXoFAWyM4fXdi5Mg2jDWdEXYcX
 aeBMPMq2MPTzKrawbrplt7MIOS77jFOXzZFinNsloFMNhKVqfWKg9PgWDLm8YpqKfk
 H2NncMISVU/E9YJLthCEz5nHvNdyqfgqhgP64ejLXK0XMi+QI+U1zojSiljKQ0dIBi
 4fFl1rC84kj5UnQhLFPGh+/hX2TwWAOsUcx8yKAnR65KcXoreXVgHbwdK8g7nHUOpA
 dfuk1XmkAljZA==
Date: Mon, 18 Jan 2021 14:30:00 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <nikolay@nvidia.com>, <menglong8.dong@gmail.com>
Message-ID: <20210118143000.0a534525@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <ffce5e21-fdd2-cb2b-6957-7454aea9c665@nvidia.com>
References: <20210117080950.122761-1-dong.menglong@zte.com.cn>
 <ffce5e21-fdd2-cb2b-6957-7454aea9c665@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 roopa@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next] net: bridge: check vlan with
 eth_type_vlan() method
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

On Mon, 18 Jan 2021 13:55:11 +0200 Nikolay Aleksandrov wrote:
> On 17/01/2021 10:09, menglong8.dong@gmail.com wrote:
> > From: Menglong Dong <dong.menglong@zte.com.cn>
> > 
> > Replace some checks for ETH_P_8021Q and ETH_P_8021AD with
> > eth_type_vlan().
> > 
> > Signed-off-by: Menglong Dong <dong.menglong@zte.com.cn>
> 
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>

Applied, thanks!
