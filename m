Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9D4750B75
	for <lists.bridge@lfdr.de>; Wed, 12 Jul 2023 16:55:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F5BF611A7;
	Wed, 12 Jul 2023 14:55:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F5BF611A7
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=h6TA0lx6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3qvN9LOXKNFG; Wed, 12 Jul 2023 14:55:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 0814960A7B;
	Wed, 12 Jul 2023 14:55:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0814960A7B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 93E56C0DD4;
	Wed, 12 Jul 2023 14:55:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 295A6C0032
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 14:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 041E383123
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 14:55:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 041E383123
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=h6TA0lx6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yr8KQDpT12EX for <bridge@lists.linux-foundation.org>;
 Wed, 12 Jul 2023 14:55:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C12782F98
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C12782F98
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 14:55:49 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 789F45C0068;
 Wed, 12 Jul 2023 10:48:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 12 Jul 2023 10:48:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1689173304; x=1689259704; bh=dDGB6dk3gveHu
 vxXP5ggp8ZAFoaeoltwyPWmhEfJpaQ=; b=h6TA0lx6uUC0QidHKNG3uLRNXI+Xe
 ggO01FzNFrXwpAEORttpEYlqIME3ANVI7BaixFC7BcGTauCjmYzhzgW7lXnpldqK
 NsinlvILHxMb6MrBCUUBPOA7CoEKEvGbNbOx3Uy7Pm4K8AUMHkH2lEjhRroMpEXd
 DHrBYNNrD9NTKfPsJbLjxEJF3s/mzH8AiQ7z/u4gRiJjXf0Ef2h+XGxWOKam0kTY
 0/Zqjnrlj7/oPL4w8VuHuYlfx2tB+cG1AhUuQTIkmIpJMOGPCRHs4sebw6S3A34P
 jGu6vBSp0ZaGV6DOv19cLxUgie0EkmPNjeDCmXPOrusF69rqRmCELtQbQ==
X-ME-Sender: <xms:N72uZJX9IvaM6bTjf2WVi_8-jBQhrscqKVGZk6CgFh-aHTvJEAMA7w>
 <xme:N72uZJnyC4AUOJa_FtjeNNr1chLjCEuRP2Uj-InBCSrhhPK0nnGs3tVDf8GV37TKO
 X_38ynlv3xgkBE>
X-ME-Received: <xmr:N72uZFYZeItwSlOg1MyMV3ssOOS5v4RIO1sBJVkvexmsnbhsqUMmDI_3NxwADhXB3SXtdM8ABCG0XoHA-HvYst2jjms>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrfedvgdekudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpeehhfdtjedviefffeduuddvffegteeiieeguefgudffvdfftdefheeijedthfej
 keenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:N72uZMV5EX3AbSPXGCF8kChCYXDIUwFiBleftS80aHa5zir1sIJFyw>
 <xmx:N72uZDmbt0eFqQGxgTEDppqzinFJ3LIww9XR8hWlJXzXuFErfvHNEQ>
 <xmx:N72uZJfpFIY3h2yTq8L-nY_c4L9aErO2ePUEcwHiU4tbKYJxmR1Ifw>
 <xmx:OL2uZMiVvA79fr_1jFmmU0tmloK5iPW2YrtpqLZkvLGXlokBgtxHKQ>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Jul 2023 10:48:22 -0400 (EDT)
Date: Wed, 12 Jul 2023 17:48:20 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Message-ID: <ZK69NDM60+N0TTFh@shredder>
References: <20230711235415.92166-1-kuniyu@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230711235415.92166-1-kuniyu@amazon.com>
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Kuniyuki Iwashima <kuni1840@gmail.com>,
 Harry Coin <hcoin@quietfountain.com>, Eric Dumazet <edumazet@google.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v1 net] bridge: Return an error when enabling
 STP in netns.
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

On Tue, Jul 11, 2023 at 04:54:15PM -0700, Kuniyuki Iwashima wrote:
> When we create an L2 loop on a bridge in netns, we will see packets storm
> even if STP is enabled.
> 
>   # unshare -n
>   # ip link add br0 type bridge
>   # ip link add veth0 type veth peer name veth1
>   # ip link set veth0 master br0 up
>   # ip link set veth1 master br0 up
>   # ip link set br0 type bridge stp_state 1
>   # ip link set br0 up
>   # sleep 30
>   # ip -s link show br0
>   2: br0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
>       link/ether b6:61:98:1c:1c:b5 brd ff:ff:ff:ff:ff:ff
>       RX: bytes  packets  errors  dropped missed  mcast
>       956553768  12861249 0       0       0       12861249  <-. Keep
>       TX: bytes  packets  errors  dropped carrier collsns     |  increasing
>       1027834    11951    0       0       0       0         <-'   rapidly
> 
> This is because llc_rcv() drops all packets in non-root netns and BPDU
> is dropped.
> 
> Let's show an error when enabling STP in netns.
> 
>   # unshare -n
>   # ip link add br0 type bridge
>   # ip link set br0 type bridge stp_state 1
>   Error: bridge: STP can't be enabled in non-root netns.
> 
> Note this commit will be reverted later when we namespacify the whole LLC
> infra.
> 
> Fixes: e730c15519d0 ("[NET]: Make packet reception network namespace safe")
> Suggested-by: Harry Coin <hcoin@quietfountain.com>

I'm not sure that's accurate. I read his response in the link below and
he says "I'd rather be warned than blocked" and "But better warned and
awaiting a fix than blocked", which I agree with. The patch has the
potential to cause a lot of regressions, but without actually fixing the
problem.

How about simply removing the error [1]? Since iproute2 commit
844c37b42373 ("libnetlink: Handle extack messages for non-error case"),
it can print extack warnings and not only errors. With the diff below:

 # unshare -n 
 # ip link add name br0 type bridge
 # ip link set dev br0 type bridge stp_state 1
 Warning: bridge: STP can't be enabled in non-root netns.
 # echo $?
 0

[1]
diff --git a/net/bridge/br_stp_if.c b/net/bridge/br_stp_if.c
index a807996ac56b..b5143de37938 100644
--- a/net/bridge/br_stp_if.c
+++ b/net/bridge/br_stp_if.c
@@ -201,10 +201,8 @@ int br_stp_set_enabled(struct net_bridge *br, unsigned long val,
 {
        ASSERT_RTNL();
 
-       if (!net_eq(dev_net(br->dev), &init_net)) {
+       if (!net_eq(dev_net(br->dev), &init_net))
                NL_SET_ERR_MSG_MOD(extack, "STP can't be enabled in non-root netns");
-               return -EINVAL;
-       }
 
        if (br_mrp_enabled(br)) {
                NL_SET_ERR_MSG_MOD(extack,

> Link: https://lore.kernel.org/netdev/0f531295-e289-022d-5add-5ceffa0df9bc@quietfountain.com/
> Signed-off-by: Kuniyuki Iwashima <kuniyu@amazon.com>
> ---
>  net/bridge/br_stp_if.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/net/bridge/br_stp_if.c b/net/bridge/br_stp_if.c
> index 75204d36d7f9..a807996ac56b 100644
> --- a/net/bridge/br_stp_if.c
> +++ b/net/bridge/br_stp_if.c
> @@ -201,6 +201,11 @@ int br_stp_set_enabled(struct net_bridge *br, unsigned long val,
>  {
>  	ASSERT_RTNL();
>  
> +	if (!net_eq(dev_net(br->dev), &init_net)) {
> +		NL_SET_ERR_MSG_MOD(extack, "STP can't be enabled in non-root netns");
> +		return -EINVAL;
> +	}
> +
>  	if (br_mrp_enabled(br)) {
>  		NL_SET_ERR_MSG_MOD(extack,
>  				   "STP can't be enabled if MRP is already enabled");
> -- 
> 2.30.2
> 
> 
