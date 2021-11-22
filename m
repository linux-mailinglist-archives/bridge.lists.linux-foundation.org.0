Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75876458C07
	for <lists.bridge@lfdr.de>; Mon, 22 Nov 2021 11:04:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3CA5600CD;
	Mon, 22 Nov 2021 10:04:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uYo8-rG6lCsC; Mon, 22 Nov 2021 10:04:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 83594605BE;
	Mon, 22 Nov 2021 10:04:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 45A85C0036;
	Mon, 22 Nov 2021 10:04:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0B716C0012
 for <bridge@lists.linux-foundation.org>; Mon, 22 Nov 2021 10:04:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E6FF240137
 for <bridge@lists.linux-foundation.org>; Mon, 22 Nov 2021 10:04:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JIUJg-55Px-o for <bridge@lists.linux-foundation.org>;
 Mon, 22 Nov 2021 10:04:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 11190400B9
 for <bridge@lists.linux-foundation.org>; Mon, 22 Nov 2021 10:04:42 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 0D1015C01B7;
 Mon, 22 Nov 2021 05:04:40 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Mon, 22 Nov 2021 05:04:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=7AB/rq
 zonUOWzLAzTKIR/r2isQMsfo/GkiwD4h91rPk=; b=Akr3wk7NneWaUex6gfdwC6
 e0KL0P7VzRwGjLuFL7R8Oi+JaazQk8xb+7CjQFxwgIufRHr24cno03AtgGOMc9d3
 qgCS3uRRtLm1VsYKH+pRGx7LObiuRURpBEV9934LzBhl4BO2jsXACOFqU+lpLbYA
 en8N549cMme6P4rmduc+oIo9M+O3+UXtIoV+QOk4q7DJaQCKXZVKPwqfQaXC/Nwk
 2YD4Sf11QRo1GDyYbEDKRfoUYuDGK166iVS1RDKd2vm3N8kPspPZ1eBlUXs7PSmO
 AKNAWVi3RAc9YV4ItosimB+veoxFZEeihYSufuVYi04SHEFMBiVGSeq1n2giJDHA
 ==
X-ME-Sender: <xms:NmubYaWGVb8BbouvrXjNEhgIuIDB7KK8riveWMZQhe-v2RcqFDThZA>
 <xme:NmubYWmudMwKizhwZ-vdWdWJNV6EqINS3fxfpIPUKYyyuIme-3mFGHi-hrEYKV1Ye
 Ff_UmqNO8HpSgQ>
X-ME-Received: <xmr:NmubYebwjLDRorb1nmqe3MLAoLKBt6AKLmsJ_1Nj-OOX-J0meFpdNAiQhUBtFNzZkp9lQeuZhLUjH_y1w_Fk5CR21Bvu9g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrgeeggdduvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:NmubYRWiXJkFDZNH7F7v7_0KAoaCIy5DgwuRh9EP5tcMpQprASXKAA>
 <xmx:NmubYUmlr2MdpbCBj1W4uvGEi_c0dGxweruN9xVZ6olzR8idtfQe_w>
 <xmx:NmubYWeSe2491GE5y021DYO2URvUF254sh9FJ7mnvuxF1jEmnTuyvg>
 <xmx:OGubYTuHm6Sqk2mvtv8oN4rnjiXPiRI2NTTcokAqwTAW2BCkFyVKmw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 22 Nov 2021 05:04:37 -0500 (EST)
Date: Mon, 22 Nov 2021 12:04:35 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Bernard Zhao <bernard@vivo.com>
Message-ID: <YZtrM3Ukz7rKfNLN@shredder>
References: <20211119020642.108397-1-bernard@vivo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211119020642.108397-1-bernard@vivo.com>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH] net/bridge: replace simple_strtoul to kstrtol
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

On Thu, Nov 18, 2021 at 06:06:42PM -0800, Bernard Zhao wrote:
> simple_strtoull is obsolete, use kstrtol instead.
> 
> Signed-off-by: Bernard Zhao <bernard@vivo.com>
> ---
>  net/bridge/br_sysfs_br.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
> index d9a89ddd0331..11c490694296 100644
> --- a/net/bridge/br_sysfs_br.c
> +++ b/net/bridge/br_sysfs_br.c
> @@ -36,15 +36,14 @@ static ssize_t store_bridge_parm(struct device *d,
>  	struct net_bridge *br = to_bridge(d);
>  	struct netlink_ext_ack extack = {0};
>  	unsigned long val;
> -	char *endp;
>  	int err;
>  
>  	if (!ns_capable(dev_net(br->dev)->user_ns, CAP_NET_ADMIN))
>  		return -EPERM;
>  
> -	val = simple_strtoul(buf, &endp, 0);
> -	if (endp == buf)
> -		return -EINVAL;
> +	err = kstrtoul(buf, 10, &val);

Base 16 is valid.

Before this patch:

# ip link add name br0 type bridge vlan_filtering 1
# echo "0x88a8" > /sys/class/net/br0/bridge/vlan_protocol
# echo $?
0

After this patch:

# ip link add name br0 type bridge vlan_filtering 1
# echo "0x88a8" > /sys/class/net/br0/bridge/vlan_protocol 
bash: echo: write error: Invalid argument

> +	if (err != 0)
> +		return err;
>  
>  	if (!rtnl_trylock())
>  		return restart_syscall();
> -- 
> 2.33.1
> 
