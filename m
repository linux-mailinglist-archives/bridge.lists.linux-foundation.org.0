Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9072F9041
	for <lists.bridge@lfdr.de>; Sun, 17 Jan 2021 03:58:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83B858621D;
	Sun, 17 Jan 2021 02:58:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wISsvO4n210Z; Sun, 17 Jan 2021 02:58:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0EFFD86155;
	Sun, 17 Jan 2021 02:58:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EDB8DC088B;
	Sun, 17 Jan 2021 02:58:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5F257C013A
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jan 2021 02:58:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 45FC88725D
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jan 2021 02:58:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lMAoDSNeW8fr for <bridge@lists.linux-foundation.org>;
 Sun, 17 Jan 2021 02:58:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DFB7187230
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jan 2021 02:58:43 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2D9AE206E9;
 Sun, 17 Jan 2021 02:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610852323;
 bh=WBZuQqQ/v6iVzAKq0bC/zQNfVZJOT1K3Ttri70N663E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=THd3Gsy3iGk0b3GBgYX2Kwk61gBvhrAwmMue9nov2gRJp1MxsqjJ1iJDvL7qLDTIU
 reREgmqH8ccskIPDrV01qcDcY6Cwk0xstgKXJAz47xEZ26oCxk3VNzg2MYWmRyU3Rr
 cccuq8dMglUmj+xDFOnncLtiCnVgCpfhJKQgZGjrRkv0pJaKlPSyuRk5ry14PZJM3B
 69dPxiiuCNB6bbfQgZ8DqbufDrm/LF97wkaYb/N1KYQ70yW/7w7/xbYU38/m86PLFu
 0ww4xhqaCT15S08YBUIcihcKQsFiVWxsJH8OfSCye437IvmKVJ0/5jIlRcHGX5xQSQ
 PfQEJJlV8MjMA==
Date: Sat, 16 Jan 2021 18:58:42 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: menglong8.dong@gmail.com
Message-ID: <20210116185842.322bf3b9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210115044131.6039-1-dong.menglong@zte.com.cn>
References: <20210115044131.6039-1-dong.menglong@zte.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 nikolay@nvidia.com, roopa@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v3 net-next] net: bridge: check vlan with
 eth_type_vlan() method
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

On Thu, 14 Jan 2021 20:41:31 -0800 menglong8.dong@gmail.com wrote:
> -	if (data[IFLA_BR_VLAN_PROTOCOL]) {
> -		switch (nla_get_be16(data[IFLA_BR_VLAN_PROTOCOL])) {
> -		case htons(ETH_P_8021Q):
> -		case htons(ETH_P_8021AD):
> -			break;
> -		default:
> -			return -EPROTONOSUPPORT;
> -		}
> +	if (data[IFLA_BR_VLAN_PROTOCOL] &&
> +	    !eth_type_vlan(nla_get_be16(data[IFLA_BR_VLAN_PROTOCOL]))) {
> +		return -EPROTONOSUPPORT;
>  	}

The curly brackets are no longer necessary here, since it's a single
line expression.
