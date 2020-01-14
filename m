Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 846B613AE1F
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 16:57:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A6EB586092;
	Tue, 14 Jan 2020 15:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ahl4aKibEnf4; Tue, 14 Jan 2020 15:56:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 48513860A3;
	Tue, 14 Jan 2020 15:56:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3923BC077D;
	Tue, 14 Jan 2020 15:56:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E67AFC077D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 13:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D4B0620436
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 13:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xs61KcQMnWHo for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 13:55:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6F8CA20434
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 13:55:45 +0000 (UTC)
Received: from cakuba.hsd1.ca.comcast.net (c-73-93-4-247.hsd1.ca.comcast.net
 [73.93.4.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA8522467A;
 Tue, 14 Jan 2020 13:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579010145;
 bh=1yUOzUoSxcZExOH/9FkbsG0uKOk9GKckSuGzrxAhpN4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Y/OHm3zVJP77IeFzNoTtCjaV4OMo99jbKwlrOUlnf74lwnac0v9y+KRU8MT/8n/1U
 v1vikP/x83NJ81KIqu9FjDc8BC5HTVi4vL06g1v+ntBL5f0MJEBv0uSh9lzruZIGrM
 jq/Yhgng2P3+H4sqZMZnw4xSFckrSrVxa7SudB0Q=
Date: Tue, 14 Jan 2020 05:55:44 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200114055544.77a7806f@cakuba.hsd1.ca.comcast.net>
In-Reply-To: <20200113155233.20771-4-nikolay@cumulusnetworks.com>
References: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
 <20200113155233.20771-4-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 14 Jan 2020 15:56:50 +0000
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, davem@davemloft.net,
 "dsahern@gmail.com" <dsahern@gmail.com>
Subject: Re: [Bridge] [PATCH net-next 3/8] net: bridge: vlan: add rtm
 definitions and dump support
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

On Mon, 13 Jan 2020 17:52:28 +0200, Nikolay Aleksandrov wrote:
> +static int br_vlan_rtm_dump(struct sk_buff *skb, struct netlink_callback *cb)
> +{
> +	int idx = 0, err = 0, s_idx = cb->args[0];
> +	struct net *net = sock_net(skb->sk);
> +	struct br_vlan_msg *bvm;
> +	struct net_device *dev;
> +
> +	if (cb->nlh->nlmsg_len < nlmsg_msg_size(sizeof(*bvm))) {

I wonder if it'd be useful to make this a strict != check? At least
when strict validation is on? Perhaps we'll one day want to extend 
the request?

> +		NL_SET_ERR_MSG_MOD(cb->extack, "Invalid header for vlan dump request");
> +		return -EINVAL;
> +	}

