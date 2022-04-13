Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 465E64FF6E4
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 14:35:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0F228267F;
	Wed, 13 Apr 2022 12:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w2wo44sdGP_0; Wed, 13 Apr 2022 12:35:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 63DC9825D3;
	Wed, 13 Apr 2022 12:35:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2926EC0088;
	Wed, 13 Apr 2022 12:35:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 660A9C002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 12:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45C22416E4
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 12:35:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2tQM72JLTUuv for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 12:35:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76DF44173B
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 12:35:08 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 7CAF25C0364;
 Wed, 13 Apr 2022 08:35:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 13 Apr 2022 08:35:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1649853307; x=
 1649939707; bh=XMgjqSu330j537uTdk8vlBBLcfWargGjanG7gxBvZyg=; b=z
 QW+9E/xJjz5557ZQvJmGoLEHCR3PqDZ2OV/fW+wKGV6shPhL4bVwe1NBK+Jat8ma
 pQvzsOsB1KmRlIWTz3jcroigAiEuugm4PYzgEleksi1wxXqn1Fu9yE+xMSeQIuS0
 XYV4uIrGhKHdZeWAfEnUsZMfJepRIDUBQAVq9rNRjTZlmKxtN11gnr7upi6ZnLIE
 7TKPk4+SCnoO3if3V37TCxXGeIdFn/H34kGCWoq6XTvk9S76Q1pjXBdRtMs59azj
 pFf+M16rLDQSaplMhimuWD82QnPtrowWq3U9KXY24OHZq9ZMApinbxH3iLUwzMe3
 UyxL7qSAru56LPfXn9XHw==
X-ME-Sender: <xms:e8NWYlit5EEn34rxWyiyWJRL5ERRuWilRL2Pk8DkX7eMsO45hiYw8g>
 <xme:e8NWYqD6MOcdyZNUzRtHdIZkbER3ThT5WB2cgVaeKGsE3rT2ub44F6xOvPTUW_J8h
 tRRBM5UA9Ly7ds>
X-ME-Received: <xmr:e8NWYlHO5jMJqQKQlJySY8cEQ8tIWrswiGRI6HMMrsym-hFfYHGaVsIWl2-VpumanNOaP7QtF2oRSI3TAZkaVNnp3gFCMw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeluddgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiugho
 shgthhdrohhrgheqnecuggftrfgrthhtvghrnheptdffkeekfeduffevgeeujeffjefhte
 fgueeugfevtdeiheduueeukefhudehleetnecuvehluhhsthgvrhfuihiivgeptdenucfr
 rghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:e8NWYqQKMixU83rHXURlJF2ihVFAAWLBHFWykr5CD0EbKem5LRhmlw>
 <xmx:e8NWYiykUQp4_IfKGSCqHV3sMWsM0lfSHPMzgXDsVj57UVDiyeU1Ew>
 <xmx:e8NWYg4Lub-JniHJgQv37rLWx2iL_EtJ7j7zD_lVh95n3C92ISpt0A>
 <xmx:e8NWYsu8iSi7U3rqdHBpFIVNlPSnJ6zi0aUXwteD_aeyBcpKrygT8Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Apr 2022 08:35:06 -0400 (EDT)
Date: Wed, 13 Apr 2022 15:35:04 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <YlbDeNh7D+BHRscg@shredder>
References: <20220413105202.2616106-1-razor@blackwall.org>
 <20220413105202.2616106-8-razor@blackwall.org>
 <YlbABWs3ICeeiKsq@shredder>
 <e22bd42c-f257-82d6-f550-6e174c74b500@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e22bd42c-f257-82d6-f550-6e174c74b500@blackwall.org>
Cc: netdev@vger.kernel.org, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v4 07/12] net: rtnetlink: add
 NLM_F_BULK support to rtnl_fdb_del
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

On Wed, Apr 13, 2022 at 03:21:54PM +0300, Nikolay Aleksandrov wrote:
> On 13/04/2022 15:20, Ido Schimmel wrote:
> > On Wed, Apr 13, 2022 at 01:51:57PM +0300, Nikolay Aleksandrov wrote:
> >> When NLM_F_BULK is specified in a fdb del message we need to handle it
> >> differently. First since this is a new call we can strictly validate the
> >> passed attributes, at first only ifindex and vlan are allowed as these
> >> will be the initially supported filter attributes, any other attribute
> >> is rejected. The mac address is no longer mandatory, but we use it
> >> to error out in older kernels because it cannot be specified with bulk
> >> request (the attribute is not allowed) and then we have to dispatch
> >> the call to ndo_fdb_del_bulk if the device supports it. The del bulk
> >> callback can do further validation of the attributes if necessary.
> >>
> >> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
> >> ---
> >> v4: mark PF_BRIDGE/RTM_DELNEIGH with RTNL_FLAG_BULK_DEL_SUPPORTED
> >>
> >>  net/core/rtnetlink.c | 67 +++++++++++++++++++++++++++++++-------------
> >>  1 file changed, 48 insertions(+), 19 deletions(-)
> >>
> >> diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> >> index 63c7df52a667..520d50fcaaea 100644
> >> --- a/net/core/rtnetlink.c
> >> +++ b/net/core/rtnetlink.c
> >> @@ -4169,22 +4169,34 @@ int ndo_dflt_fdb_del(struct ndmsg *ndm,
> >>  }
> >>  EXPORT_SYMBOL(ndo_dflt_fdb_del);
> >>  
> >> +static const struct nla_policy fdb_del_bulk_policy[NDA_MAX + 1] = {
> >> +	[NDA_VLAN]	= { .type = NLA_U16 },
> > 
> > In earlier versions br_vlan_valid_id() was used to validate the VLAN,
> > but I don't see it anymore. Maybe use 
> > 
> > NLA_POLICY_RANGE(1, VLAN_N_VID - 2)
> > 
> > ?
> > 
> > I realize that invalid values won't do anything, but I think it's better
> > to only allow valid ranges.
> > 
> 
> It's already validated below, see fdb_vid_parse().

Sorry, missed it :)
