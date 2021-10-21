Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E421A436A87
	for <lists.bridge@lfdr.de>; Thu, 21 Oct 2021 20:25:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F732608BF;
	Thu, 21 Oct 2021 18:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HoHtDZViA53m; Thu, 21 Oct 2021 18:25:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 3DC5360F0C;
	Thu, 21 Oct 2021 18:25:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E504BC0020;
	Thu, 21 Oct 2021 18:25:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 93347C0011
 for <bridge@lists.linux-foundation.org>; Thu, 21 Oct 2021 18:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 824CE835C9
 for <bridge@lists.linux-foundation.org>; Thu, 21 Oct 2021 18:25:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sbf8Nc8deHKo for <bridge@lists.linux-foundation.org>;
 Thu, 21 Oct 2021 18:25:01 +0000 (UTC)
X-Greylist: delayed 00:08:50 by SQLgrey-1.8.0
Received: from mail.netfilter.org (mail.netfilter.org [217.70.188.207])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3FA2B83592
 for <bridge@lists.linux-foundation.org>; Thu, 21 Oct 2021 18:25:00 +0000 (UTC)
Received: from netfilter.org (unknown [78.30.32.163])
 by mail.netfilter.org (Postfix) with ESMTPSA id 6E3ED63F37;
 Thu, 21 Oct 2021 20:14:25 +0200 (CEST)
Date: Thu, 21 Oct 2021 20:16:03 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <YXGuY2LjiBb5M+jn@salvia>
References: <20210928200647.GA266402@embeddedor>
 <202110210958.6626A30@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <202110210958.6626A30@keescook>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Florian Westphal <fw@strlen.de>, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Subject: Re: [Bridge] [PATCH][net-next] netfilter: ebtables: use
 array_size() helper in copy_{from, to}_user()
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

On Thu, Oct 21, 2021 at 10:00:34AM -0700, Kees Cook wrote:
> On Tue, Sep 28, 2021 at 03:06:47PM -0500, Gustavo A. R. Silva wrote:
> > Use array_size() helper instead of the open-coded version in
> > copy_{from,to}_user().  These sorts of multiplication factors
> > need to be wrapped in array_size().
> > 
> > Link: https://github.com/KSPP/linux/issues/160
> > Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> 
> Thanks!
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> 
> I see that this is marked "Awaiting Upstream" (for an ebtables
> maintainer ack?)
> https://patchwork.kernel.org/project/netdevbpf/patch/20210928200647.GA266402@embeddedor/

I'll route this through the netfilter tree, thanks.
