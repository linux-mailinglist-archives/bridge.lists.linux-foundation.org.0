Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 867F525F0C5
	for <lists.bridge@lfdr.de>; Sun,  6 Sep 2020 23:33:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED3DA850AD;
	Sun,  6 Sep 2020 21:33:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jmcGT-D0k9sF; Sun,  6 Sep 2020 21:33:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 731C4850E9;
	Sun,  6 Sep 2020 21:33:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 58FF2C0051;
	Sun,  6 Sep 2020 21:33:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 96B39C0051
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:33:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 865CF85074
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:33:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VwFD8gUCqLaU for <bridge@lists.linux-foundation.org>;
 Sun,  6 Sep 2020 21:33:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1421884540
 for <bridge@lists.linux-foundation.org>; Sun,  6 Sep 2020 21:33:28 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 941CC2078E;
 Sun,  6 Sep 2020 21:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599428007;
 bh=cJ708UL/ADiomAUjAbKxBhMf6n+GHXQJnHzoImsfcg8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ePw+NbIWcoBts+yC81GpKZVCQ3kfkzNGSW2jFkiFOG5h1RLBSVzvxtYR6e/qqyN7X
 0TXYmsScyLa/9eNnEe2ESPBe0wdn+vbgcKFyw8G1gtM/+LLGfeQqkWvHlE1zV7avsD
 Z3LQmvZQ27m4va7r31agv4+StmqRxpuFpTx2d3cg=
Date: Sun, 6 Sep 2020 14:33:26 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200906143326.0a09348b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <89eb1120-5776-081e-52ce-1ef92f41ecbe@cumulusnetworks.com>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
 <20200905082410.2230253-6-nikolay@cumulusnetworks.com>
 <20200906135604.4d47b7a8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <89eb1120-5776-081e-52ce-1ef92f41ecbe@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v3 05/15] net: bridge: mcast: factor
 out port group del
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

On Mon, 7 Sep 2020 00:29:10 +0300 Nikolay Aleksandrov wrote:
> >> @@ -1641,16 +1647,7 @@ br_multicast_leave_group(struct net_bridge *br,
> >>   			if (p->flags & MDB_PG_FLAGS_PERMANENT)
> >>   				break;
> >>   
> >> -			rcu_assign_pointer(*pp, p->next);
> >> -			hlist_del_init(&p->mglist);
> >> -			del_timer(&p->timer);
> >> -			kfree_rcu(p, rcu);
> >> -			br_mdb_notify(br->dev, port, group, RTM_DELMDB,
> >> -				      p->flags | MDB_PG_FLAGS_FAST_LEAVE);  
> > 
> > And here we'll loose MDB_PG_FLAGS_FAST_LEAVE potentially?
> 
> Good catch, we will lose the fast leave indeed.
> This is a 1 line change to set the flag before notifying. Would you prefer
> me to send a v4 or a follow up for it?

I think it's cleaner if you send a v4. But not rush, I was planning to
apply this tomorrow morning PST, anyway.
