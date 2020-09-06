Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB24425F08E
	for <lists.bridge@lfdr.de>; Sun,  6 Sep 2020 23:01:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8E9D86FB2;
	Sun,  6 Sep 2020 21:01:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v0PF5XtS9umQ; Sun,  6 Sep 2020 21:01:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43CFF86F7D;
	Sun,  6 Sep 2020 21:01:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 30FEAC0051;
	Sun,  6 Sep 2020 21:01:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A77D4C0051
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9A27C866CE
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cy+hzCS9bA-O for <bridge@lists.linux-foundation.org>;
 Sun,  6 Sep 2020 21:01:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 41EED866B9
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:01:39 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE64420760;
 Sun,  6 Sep 2020 21:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599426098;
 bh=AUZ/2jkw3ge8yjc1a8PiX5fWdFUU6aD/oCLWbA0734k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LBKh9F2hTcvYB3ARX6ZwaseOZOrUrDgCqir96n5JHPs6agXDa0p2EiDiWxSrJYuyF
 Lj3jIvfilxO4MF9xETaFZAUDQsJ1p3BnIdHLRh/pLM45iPt+FvzsX+pMiARbpjhwwH
 Nm6FfYGakfqepkH52Ur0zq9ILJDmQT0j3+DkdYj8=
Date: Sun, 6 Sep 2020 14:01:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200906140136.77ae178d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200905082410.2230253-7-nikolay@cumulusnetworks.com>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
 <20200905082410.2230253-7-nikolay@cumulusnetworks.com>
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

On Sat,  5 Sep 2020 11:24:01 +0300 Nikolay Aleksandrov wrote:
> We need to be able to retransmit group-specific and group-and-source
> specific queries. The new timer takes care of those.

What guarantees that timer will not use pg after free? Do timer
callbacks hold the RCU read lock?
