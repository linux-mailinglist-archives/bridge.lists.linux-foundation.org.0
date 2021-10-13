Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 919F642CB24
	for <lists.bridge@lfdr.de>; Wed, 13 Oct 2021 22:33:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E60E160AD5;
	Wed, 13 Oct 2021 20:33:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qxoUiUvV8n_Y; Wed, 13 Oct 2021 20:33:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 3BDB160AC6;
	Wed, 13 Oct 2021 20:33:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 00667C0022;
	Wed, 13 Oct 2021 20:33:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7B9ACC000D
 for <bridge@lists.linux-foundation.org>; Wed, 13 Oct 2021 20:33:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E0C140155
 for <bridge@lists.linux-foundation.org>; Wed, 13 Oct 2021 20:33:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id er2XD-s72LRN for <bridge@lists.linux-foundation.org>;
 Wed, 13 Oct 2021 20:33:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B891540003
 for <bridge@lists.linux-foundation.org>; Wed, 13 Oct 2021 20:33:33 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1EF13610CE;
 Wed, 13 Oct 2021 20:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634157212;
 bh=JUi6Yrt6b3RrzaP0GICRbOBRuJGs4INzI/hs1Pv1ynA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SourJ8TlnOofBWndt0Z4Ov7zJeXmPKK9QVPLhT0bssGWje0ZQeexHPnzQKnfRe20G
 Et06r+zv79HlJn9pahoeu0mQQEvzBCOsMq6wSt/RAOyiBdj9t5eFqZGbOKPVsPlNrh
 Uena4duOKbT1zt4511C45BmlHC4cg3Tf/isiq7COiQNWqOCd1lmjAGuuNpApID921j
 RUdLd+8PJ9TW9pIkAW0iXym+eC69E6Dyfd63gjEtJxMyc22yCQBIVCacnXIvo29FkV
 tIDTmp5ZaUm44LQU+4uIfISb1y9wyrJ3LGIh5DggEmob0XAxjra7jfsa7SLAAsarOl
 Md98WOalFav3w==
Date: Wed, 13 Oct 2021 13:33:31 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Kyungrok Chung <acadx0@gmail.com>
Message-ID: <20211013133331.0b846cd5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211012141810.30661-1-acadx0@gmail.com>
References: <20211012141810.30661-1-acadx0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 Jozsef Kadlecsik <kadlec@netfilter.org>, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: make use of helper
 netif_is_bridge_master()
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

On Tue, 12 Oct 2021 23:18:09 +0900 Kyungrok Chung wrote:
> Make use of netdev helper functions to improve code readability.
> Replace 'dev->priv_flags & IFF_EBRIDGE' with netif_is_bridge_master(dev).
> 
> Signed-off-by: Kyungrok Chung <acadx0@gmail.com>

Why leave these out?

net/batman-adv/multicast.c:     } while (upper && !(upper->priv_flags & IFF_EBRIDGE));
net/core/rtnetlink.c:                               !(dev->priv_flags & IFF_EBRIDGE))
