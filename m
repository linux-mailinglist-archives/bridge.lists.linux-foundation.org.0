Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BB91C00F0
	for <lists.bridge@lfdr.de>; Thu, 30 Apr 2020 17:56:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F03AD204F4;
	Thu, 30 Apr 2020 15:56:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ys3yj3KsXmm3; Thu, 30 Apr 2020 15:56:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 1F3A6203DC;
	Thu, 30 Apr 2020 15:56:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 03D73C088F;
	Thu, 30 Apr 2020 15:56:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D6547C016F
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 15:56:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC05F86DA3
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 15:56:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4koDlwfI2elJ for <bridge@lists.linux-foundation.org>;
 Thu, 30 Apr 2020 15:56:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B4C4A86A40
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 15:56:50 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id C93BB86F;
 Thu, 30 Apr 2020 11:56:49 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 30 Apr 2020 11:56:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=3RpLzR
 AZmoGsH5/njPn/0R69Z0vhJrHObhLFL6joNtg=; b=sbfh3p4t8AsArW+k8FG0o3
 da1kQbKW6t0TNVXhiq9T8xqMUTNAsJsFM36/B+fVsqhoCRc/qTC0pUUHhxMAzzi0
 HZs9xXNy56d0uSrW8GUewTiFeWO7Q9uwgiBsZv9e3YAfXKnmGaZotn6s+h6gI4w5
 efU5QKB2ModJQlXUM0xxXQaA1rSe/85yKr45f6q+EQ+S/CZS7RBuiQLRHkbkL8Bd
 RW+/BzWDgxUIyntFgoUCWrIvxytJ7x/LkX3S+wD9tmlk4LAJ3ONf7lHHb0ULQSHN
 YtdYG2IwdDGnuNjgD+bebRvntYbApo2axkATJXNQLld4J4kvBX4qCUb5vZMsx/rQ
 ==
X-ME-Sender: <xms:QPWqXvAmRiHpsgWKhcV7KPyDyKwehOc4i7kGUnhD9Zr5ryIYdincYw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieehgdelgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necukfhppeejledrudektddrheegrdduudeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:QPWqXgFCBKX_A3sc11swyz-BGu7eE0nBpzbt-4bUluU0MYmF65D6RA>
 <xmx:QPWqXnIOKaZ7n5BPWDiVuhpSi-G0Z_kvdG3APVavrOwqo_AUaUTDFg>
 <xmx:QPWqXknIznwHWIzyq3RJ6AY9pGqZzXpUnJfX_6XJcLKPxB3rLqIMog>
 <xmx:QfWqXqyXTS2juOXD8HRAaien85kHa42X5oeNm238c3B8AF3u3nqnGQ>
Received: from localhost (bzq-79-180-54-116.red.bezeqint.net [79.180.54.116])
 by mail.messagingengine.com (Postfix) with ESMTPA id 74C3B3280060;
 Thu, 30 Apr 2020 11:56:48 -0400 (EDT)
Date: Thu, 30 Apr 2020 18:56:45 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200430155645.GA4076599@splinter>
References: <85b1e301-8189-540b-b4bf-d0902e74becc@profihost.ag>
 <20200430105551.GA4068275@splinter>
 <4b3a6079-d8d4-24c5-8fc9-15bcb96bca80@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4b3a6079-d8d4-24c5-8fc9-15bcb96bca80@cumulusnetworks.com>
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 davem@davemloft.net, Stefan Priebe - Profihost AG <s.priebe@profihost.ag>
Subject: Re: [Bridge] BUG: soft lockup while deleting tap interface from
 vlan aware bridge
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

On Thu, Apr 30, 2020 at 02:20:23PM +0300, Nikolay Aleksandrov wrote:
> Maybe we can batch the deletes at say 32 at a time?

Hi Nik,

Thanks for looking into this!

I don't really feel comfortable hard coding an arbitrary number of
entries before calling cond_resched(). I didn't see a noticeable
difference in execution time with the previous patch versus an unpatched
kernel. Also, in the examples I saw in the networking code
cond_resched() is always called after each loop iteration.

Let me know how you prefer it and I will send a patch.
