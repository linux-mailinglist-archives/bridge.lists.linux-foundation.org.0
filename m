Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0702325F0BA
	for <lists.bridge@lfdr.de>; Sun,  6 Sep 2020 23:32:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 92B1A870C4;
	Sun,  6 Sep 2020 21:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vq1BhFSV2VXs; Sun,  6 Sep 2020 21:32:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F348870BF;
	Sun,  6 Sep 2020 21:32:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F1B61C0051;
	Sun,  6 Sep 2020 21:32:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8EE31C0051
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:32:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6E39020408
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:32:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YqbCumbWFY4Q for <bridge@lists.linux-foundation.org>;
 Sun,  6 Sep 2020 21:32:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 13B04203FA
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:32:04 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6BB972078E;
 Sun,  6 Sep 2020 21:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599427924;
 bh=x7lb0UZTlIWVHwJpwneuTZolf6e4+q5mL7jqqbRFG+U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=X0XL8nBRkYfyOYoNewrQJsLl35GLAbka8CG0Hrqf0DCajJT1rt1d0T57DAvQlQ7/y
 N8kZM8plfpUFuZp0VC5hRSBMpMYtKOCUVgxe6o2YaQA/hua2umyVNp6+E+3WStBtri
 iYUqScPl323ZMmfheBOdpwmShY8eBUXoRvj2d2hI=
Date: Sun, 6 Sep 2020 14:32:03 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200906143203.011eb7ea@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <4f8ec4f0-6311-3b18-c7c4-a3a49b8d94b4@cumulusnetworks.com>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
 <20200905082410.2230253-7-nikolay@cumulusnetworks.com>
 <20200906140136.77ae178d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <4f8ec4f0-6311-3b18-c7c4-a3a49b8d94b4@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v3 06/15] net: bridge: mcast: add
 support for group query retransmit
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

On Mon, 7 Sep 2020 00:14:51 +0300 Nikolay Aleksandrov wrote:
> On 9/7/20 12:01 AM, Jakub Kicinski wrote:
> > On Sat,  5 Sep 2020 11:24:01 +0300 Nikolay Aleksandrov wrote:  
> >> We need to be able to retransmit group-specific and group-and-source
> >> specific queries. The new timer takes care of those.  
> > 
> > What guarantees that timer will not use pg after free? Do timer
> > callbacks hold the RCU read lock?
> 
> See the last patch, it guarantees no entry timer will be used when it's freed.

Ack.
