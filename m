Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1520D28E91B
	for <lists.bridge@lfdr.de>; Thu, 15 Oct 2020 01:16:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 92328881A7;
	Wed, 14 Oct 2020 23:16:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m3hM7XQd-mde; Wed, 14 Oct 2020 23:16:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 26AA68811E;
	Wed, 14 Oct 2020 23:16:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1AE10C0051;
	Wed, 14 Oct 2020 23:16:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 93AA9C0051
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:16:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 81EE68811E
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:16:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AVLbetTzHmKK for <bridge@lists.linux-foundation.org>;
 Wed, 14 Oct 2020 23:16:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 32B4D88102
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:16:15 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net
 (c-67-180-217-166.hsd1.ca.comcast.net [67.180.217.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2841020776;
 Wed, 14 Oct 2020 23:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602717372;
 bh=2d5aAUYPl3e685Wtq1LeFikIS8MayVnNbjd2tNE9i9Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Iz0fyNozvpie0bXmK4hoQHzraMjPyvp0QW3mT+3Ti1faJvaOcW4gPqXzwNQDry8H9
 1jEo7vI+K2S5eYyq7wsBzWOMzYPR4JlNlRupwiohEtd7jWV93etZ2WSyn/G390H6ys
 sf5oPSzHY+NMmEr2hFe3iQ/iPJMKNpVoAYaQsoAI=
Date: Wed, 14 Oct 2020 16:16:10 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Message-ID: <20201014161610.46dd5785@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20201012140428.2549163-7-henrik.bjoernlund@microchip.com>
References: <20201012140428.2549163-1-henrik.bjoernlund@microchip.com>
 <20201012140428.2549163-7-henrik.bjoernlund@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v5 06/10] bridge: cfm: Kernel space
 implementation of CFM. CCM frame RX added.
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

On Mon, 12 Oct 2020 14:04:24 +0000 Henrik Bjoernlund wrote:
> +struct br_cfm_status_tlv {
> +	__u8 type;
> +	__be16 length;
> +	__u8 value;
> +};

This structure is unused (and likely not what you want, since it will
have 2 1 byte while unless you mark length as __packed).
