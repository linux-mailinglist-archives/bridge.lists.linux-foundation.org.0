Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7452A28E92B
	for <lists.bridge@lfdr.de>; Thu, 15 Oct 2020 01:27:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 324F287E8A;
	Wed, 14 Oct 2020 23:27:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 69ShgOuCYdpC; Wed, 14 Oct 2020 23:27:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id B058387946;
	Wed, 14 Oct 2020 23:27:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A1334C0051;
	Wed, 14 Oct 2020 23:27:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 808B2C0051
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 670CB8840B
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q0BC6fOZf1My for <bridge@lists.linux-foundation.org>;
 Wed, 14 Oct 2020 23:26:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 03E078840A
 for <bridge@lists.linux-foundation.org>; Wed, 14 Oct 2020 23:26:58 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net
 (c-67-180-217-166.hsd1.ca.comcast.net [67.180.217.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E403C2072D;
 Wed, 14 Oct 2020 23:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602718017;
 bh=aJtLUT5CUqccTM2pkrFn/NwRFqdAj1DcJprXwjRRsh0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cwbBqOsazetMElUlWGrNzzYcUBOpha8aLsVcHn5DAX4zgDpW8YjqLw9ZlOU8et3We
 2d6oRpe5obXv64sp0VcDx6QjOmCRsd0Emc9M+qSNHq54K1RtYNGivqabiWxiUg+v7y
 dHcbommzec42eZbBZU0pFf56yHMa0MiByTuTfkBc=
Date: Wed, 14 Oct 2020 16:26:55 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Message-ID: <20201014162655.3cbc8664@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
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
> +	/* This CCM related status is based on the latest received CCM PDU. */
> +	u8 port_tlv_value; /* Port Status TLV value */
> +	u8 if_tlv_value; /* Interface Status TLV value */
> +
> +	/* CCM has not been received for 3.25 intervals */
> +	bool ccm_defect;
> +
> +	/* (RDI == 1) for last received CCM PDU */
> +	bool rdi;
> +
> +	/* Indications that a CCM PDU has been seen. */
> +	bool seen; /* CCM PDU received */
> +	bool tlv_seen; /* CCM PDU with TLV received */
> +	/* CCM PDU with unexpected sequence number received */
> +	bool seq_unexp_seen;

Please consider using a u8 bitfield rather than a bunch of bools,
if any of this structures are expected to have many instances. 
That'd save space.
