Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B38244DC96D
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 15:59:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65FB781980;
	Thu, 17 Mar 2022 14:59:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VCA95OT6KlUO; Thu, 17 Mar 2022 14:59:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 05F9B84723;
	Thu, 17 Mar 2022 14:59:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AF75BC0082;
	Thu, 17 Mar 2022 14:59:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F080AC000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 14:59:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EA80440587
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 14:59:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PDNr8y8Q2gwg for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 14:59:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 356C740443
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 14:59:35 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 4E9F25C0151;
 Thu, 17 Mar 2022 10:59:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 17 Mar 2022 10:59:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=eq8Q3Wf36/Ac2wsVD
 zrJSDqU/+NPSnDNknTC94Rn3ys=; b=Z+u61UZF2MpFvWSlO9RK9pImFvyFmJi45
 jy6JXcXuXSm3frv6E3GS/SPdGVUx5jdEEFQ+QqdpGZu7HAE6uNYkS9LgMYaQn6Zk
 cRRvPrhYr46PgsDMZ0jQskLD2kuL7U6XppwJNiCHbvB3SxYso8QLkVtRg5Km+CWJ
 +1xP7shOd/FYQ7MTQdkVOZ4nJ5EuGNWy65PAxIBkgpphPWlQKfGyF+RCr0BJocYu
 qpUyh1nzzUhRZPMb7oJAfWWKpsc/EEoUvnPYjgH55dqG/yctgtg5MnjHJHJPuQio
 FPPlokROP7Nb3zWA9Rdjw0C02G7ih2Fp8snt5Brdtr6g8AwFYLxVQ==
X-ME-Sender: <xms:1kwzYvKi6OJoZcDf1ohLpIaz-iALK7M0VXI5dHQp6UvMUhMWETnLwQ>
 <xme:1kwzYjLpgPqNWh6A-lf_RnHAD2c2_4DVSLvJdss0XCoV5bNdpfO4R7MSGJgP44CWc
 xiRAI9SqQoGudc>
X-ME-Received: <xmr:1kwzYnuO3seh2DcMdygVIma-0AZGl6IWGE5MSluGDDx9zVf5JK4XQNL5l6IbZmuGDAwpFQmpTGW6B1qpnT0rdg36Ccc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudefgedgieelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:1kwzYoaYDFZUxE0dWyf7_xLUwQ47t76Pr9ikIlA6iCY_xUlUXl45Ww>
 <xmx:1kwzYmYZMQD9FLICF9kfhzXBzZ6BjNCZ7rAwB-MnKldKySbdAHT70A>
 <xmx:1kwzYsAQqJDrpGJXu9P0bYF92lmyFg0yiQvgoCBc85odvVXAettUhg>
 <xmx:1kwzYrJ_GBAM-ZcZmgscS90xvQEe77iMkzH6g9-n1lHskbTXTyUFSg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 17 Mar 2022 10:59:33 -0400 (EDT)
Date: Thu, 17 Mar 2022 16:59:30 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <YjNM0ugG2dcZSD2r@shredder>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-2-schultz.hans+netdev@gmail.com>
 <YjM7Iwx4MDdGEHFA@shredder> <86ilsciqfh.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86ilsciqfh.fsf@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 razor@blackwall.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

On Thu, Mar 17, 2022 at 03:50:26PM +0100, Hans Schultz wrote:
> On tor, mar 17, 2022 at 15:44, Ido Schimmel <idosch@idosch.org> wrote:
> > On Thu, Mar 17, 2022 at 10:38:59AM +0100, Hans Schultz wrote:
> >> Add an intermediate state for clients behind a locked port to allow for
> >> possible opening of the port for said clients. This feature corresponds
> >> to the Mac-Auth and MAC Authentication Bypass (MAB) named features. The
> >> latter defined by Cisco.
> >> Only the kernel can set this FDB entry flag, while userspace can read
> >> the flag and remove it by deleting the FDB entry.
> >
> > Can you explain where this flag is rejected by the kernel?
> >
> Is it an effort to set the flag from iproute2 on adding a fdb entry?

I'm not sure what you are asking, but even if iproute2 can't set the
flag it doesn't mean the kernel shouldn't reject it

> 
> > Nik, it seems the bridge ignores 'NDA_FLAGS_EXT', but I think that for
> > new flags we should do a better job and reject unsupported
> > configurations. WDYT?
> >
> > The neighbour code will correctly reject the new flag due to
> > 'NTF_EXT_MASK'.
