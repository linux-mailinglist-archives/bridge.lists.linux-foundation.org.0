Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3AC4C31CF
	for <lists.bridge@lfdr.de>; Thu, 24 Feb 2022 17:48:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11F4D4035B;
	Thu, 24 Feb 2022 16:48:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id idMpwiTxLQyU; Thu, 24 Feb 2022 16:48:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id BA2C04154C;
	Thu, 24 Feb 2022 16:48:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7695AC0036;
	Thu, 24 Feb 2022 16:48:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E3824C0011
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 16:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CBB0583299
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 16:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6XYTGzzXN1I7 for <bridge@lists.linux-foundation.org>;
 Thu, 24 Feb 2022 16:48:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30EBF813B3
 for <bridge@lists.linux-foundation.org>; Thu, 24 Feb 2022 16:48:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7A1A5B826B0;
 Thu, 24 Feb 2022 16:48:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5F00C340EC;
 Thu, 24 Feb 2022 16:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645721288;
 bh=8JTPR/7vjk4EMGQfh0ixKzqy+71HD3b6jjnIvvGYOc4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iEfpodCNLQqMB82z/KU0/MV9yw7n62gF7C1iFWf4TWnmCIKPY9Md7z2G+GZxXyCwY
 Sw/hm6nQQwtMVJy74HMSwByyrhJ+A0BmnUVqVcUSStBN/AqJHTClwuNbE73HrZX9P/
 LWNiEznOCqWwSj/RyBFddMQgOL/llz7nL1X/usX8hPA+RX2zwiCYsCNvZoF5G0ohgC
 p9ZhqdB6imNSDAJ7NVHX9cyEOo5Lu1vybrAFrz8LjdiWGydMgau6A/yB6eOsHQUtxf
 lROxdsQkCYOm3wmckh3tryJG/GddPSSLgHujlc/JBvCUfm7qF9b8V/2GqZMn7KhQPN
 N31WF13sI8JJg==
Date: Thu, 24 Feb 2022 08:48:06 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Joachim Wiberg <troglobit@gmail.com>
Message-ID: <20220224084806.4e85e6b5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <875yp4qlcg.fsf@gmail.com>
References: <20220223172407.175865-1-troglobit@gmail.com>
 <66dc205f-9f57-61c1-35d9-8712e8d9fe3a@blackwall.org>
 <20220224080611.4e32bac3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <875yp4qlcg.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, "David S . Miller" <davem@davemloft.net>,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH 1/1 net-next] net: bridge: add support for host
 l2 mdb entries
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

On Thu, 24 Feb 2022 17:29:35 +0100 Joachim Wiberg wrote:
> On Thu, Feb 24, 2022 at 08:06, Jakub Kicinski <kuba@kernel.org> wrote:
> > On Thu, 24 Feb 2022 13:26:22 +0200 Nikolay Aleksandrov wrote:  
> >> On 23/02/2022 19:24, Joachim Wiberg wrote:  
>  [...]  
> >> It would be nice to add a selftest for L2 entries. You can send it as a follow-up.  
> > Let's wait for that, also checkpatch says you need to balance brackets
> > to hold kernel coding style.  
> 
> Jakub, by "wait for that" do you mean you'd prefer I add the selftests
> to this?

Yes, add a selftest as a separate patch but in the same series.
