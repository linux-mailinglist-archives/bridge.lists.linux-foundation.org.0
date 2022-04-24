Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9601350DB8B
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 10:47:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFFAE818A2;
	Mon, 25 Apr 2022 08:47:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EC2umhDeqC5Y; Mon, 25 Apr 2022 08:47:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C8CB481819;
	Mon, 25 Apr 2022 08:47:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 93A6FC008E;
	Mon, 25 Apr 2022 08:47:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 482EAC002D
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 16:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3139781DA3
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 16:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o4y0uDvUAh9c for <bridge@lists.linux-foundation.org>;
 Sun, 24 Apr 2022 16:15:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D219D81D3D
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 16:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inria.fr; s=dc;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=dFgs9qbEcOWsSo2xl3UGtyLPP/Q/SV+0PLsA8mb0eTY=;
 b=dJdcRpTbIo2wX6tp1wmNIOoT4XSB97unPa6eLJxbBD6cK9oSQsZf2NAh
 MPSl5DWl6R2F4p+F2aI8TURJAZys3mHpOrWHoITR7itSnGDiz/bCLVsMs
 OP24VAz6XesPAIVv9yPxq5MeXovM/OmjTg5Ku7Nbv+sBksL1F+kW45Qcr M=;
Authentication-Results: mail3-relais-sop.national.inria.fr;
 dkim=none (message not signed) header.i=none;
 spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.90,286,1643670000"; d="scan'208";a="12281397"
Received: from ip-214.net-89-2-7.rev.numericable.fr (HELO hadrien)
 ([89.2.7.214]) by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Apr 2022 18:15:08 +0200
Date: Sun, 24 Apr 2022 18:15:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2204241813210.7691@hadrien>
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Mailman-Approved-At: Mon, 25 Apr 2022 08:47:17 +0000
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 vladimir.oltean@nxp.com, sbrivio@redhat.com, claudiu.manoil@nxp.com,
 anthony.l.nguyen@intel.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com,
 intel-wired-lan@lists.osuosl.org
Subject: Re: [Bridge] [PATCH net-next v3 2/2] net: vxlan: vxlan_core.c: Add
 extack support to vxlan_fdb_delete
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



On Sun, 24 Apr 2022, Alaa Mohamed wrote:

> Add extack to vxlan_fdb_delete and vxlan_fdb_parse

It could be helpful to say more about what adding extack support involves.

>
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> ---
> changes in V2:
> 	- fix spelling vxlan_fdb_delete
> 	- add missing braces
> 	- edit error message
> ---
> changes in V3:
> 	fix errors reported by checkpatch.pl

But your changes would seem to also be introducing more checkpatch errors,
because the Linux kernel coding style puts a space before an { at the
start of an if branch.

julia

> ---
>  drivers/net/vxlan/vxlan_core.c | 36 +++++++++++++++++++++++-----------
>  1 file changed, 25 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
> index cf2f60037340..4e1886655101 100644
> --- a/drivers/net/vxlan/vxlan_core.c
> +++ b/drivers/net/vxlan/vxlan_core.c
> @@ -1129,19 +1129,23 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev *vxlan, struct vxlan_fdb *f,
>
>  static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>  			   union vxlan_addr *ip, __be16 *port, __be32 *src_vni,
> -			   __be32 *vni, u32 *ifindex, u32 *nhid)
> +			   __be32 *vni, u32 *ifindex, u32 *nhid, struct netlink_ext_ack *extack)
>  {
>  	struct net *net = dev_net(vxlan->dev);
>  	int err;
>
>  	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
> -	    tb[NDA_PORT]))
> -		return -EINVAL;
> +	    tb[NDA_PORT])){
> +			NL_SET_ERR_MSG(extack, "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
> +			return -EINVAL;
> +		}
>
>  	if (tb[NDA_DST]) {
>  		err = vxlan_nla_get_addr(ip, tb[NDA_DST]);
> -		if (err)
> +		if (err){
> +			NL_SET_ERR_MSG(extack, "Unsupported address family");
>  			return err;
> +		}
>  	} else {
>  		union vxlan_addr *remote = &vxlan->default_dst.remote_ip;
>
> @@ -1157,24 +1161,30 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>  	}
>
>  	if (tb[NDA_PORT]) {
> -		if (nla_len(tb[NDA_PORT]) != sizeof(__be16))
> +		if (nla_len(tb[NDA_PORT]) != sizeof(__be16)){
> +			NL_SET_ERR_MSG(extack, "Invalid vxlan port");
>  			return -EINVAL;
> +		}
>  		*port = nla_get_be16(tb[NDA_PORT]);
>  	} else {
>  		*port = vxlan->cfg.dst_port;
>  	}
>
>  	if (tb[NDA_VNI]) {
> -		if (nla_len(tb[NDA_VNI]) != sizeof(u32))
> +		if (nla_len(tb[NDA_VNI]) != sizeof(u32)){
> +			NL_SET_ERR_MSG(extack, "Invalid vni");
>  			return -EINVAL;
> +		}
>  		*vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
>  	} else {
>  		*vni = vxlan->default_dst.remote_vni;
>  	}
>
>  	if (tb[NDA_SRC_VNI]) {
> -		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32))
> +		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32)){
> +			NL_SET_ERR_MSG(extack, "Invalid src vni");
>  			return -EINVAL;
> +		}
>  		*src_vni = cpu_to_be32(nla_get_u32(tb[NDA_SRC_VNI]));
>  	} else {
>  		*src_vni = vxlan->default_dst.remote_vni;
> @@ -1183,12 +1193,16 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>  	if (tb[NDA_IFINDEX]) {
>  		struct net_device *tdev;
>
> -		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32))
> +		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32)){
> +			NL_SET_ERR_MSG(extack, "Invalid ifindex");
>  			return -EINVAL;
> +		}
>  		*ifindex = nla_get_u32(tb[NDA_IFINDEX]);
>  		tdev = __dev_get_by_index(net, *ifindex);
> -		if (!tdev)
> +		if (!tdev){
> +			NL_SET_ERR_MSG(extack,"Device not found");
>  			return -EADDRNOTAVAIL;
> +		}
>  	} else {
>  		*ifindex = 0;
>  	}
> @@ -1226,7 +1240,7 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
>  		return -EINVAL;
>
>  	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
> -			      &nhid);
> +			      &nhid, extack);
>  	if (err)
>  		return err;
>
> @@ -1291,7 +1305,7 @@ static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>  	int err;
>
>  	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
> -			      &nhid);
> +			      &nhid, extack);
>  	if (err)
>  		return err;
>
> --
> 2.36.0
>
>
>
