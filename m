Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6C8306A92
	for <lists.bridge@lfdr.de>; Thu, 28 Jan 2021 02:42:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5FCC87323;
	Thu, 28 Jan 2021 01:42:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fYxLQefk2HOj; Thu, 28 Jan 2021 01:42:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 337A88731A;
	Thu, 28 Jan 2021 01:42:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 19364C013A;
	Thu, 28 Jan 2021 01:42:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A17C3C013A
 for <bridge@lists.linux-foundation.org>; Thu, 28 Jan 2021 01:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 87B75863CD
 for <bridge@lists.linux-foundation.org>; Thu, 28 Jan 2021 01:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dfGByTlgIdek for <bridge@lists.linux-foundation.org>;
 Thu, 28 Jan 2021 01:42:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0D8F086191
 for <bridge@lists.linux-foundation.org>; Thu, 28 Jan 2021 01:42:28 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 41B1960C40;
 Thu, 28 Jan 2021 01:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611798147;
 bh=4vLfmeyK9AuDFxkUBs0MB1PAHNzPTWLRrZAfsUxxuhY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=f/qYBVMaB8KKg7rQbGniI96CxgU6uiTi1mzhuP+uWQ/h2IW6HVX3RG1+kY2EcEuhy
 jrQbp/jteSR+5EFzqAxiY3erQifVlTyERtWEMf1cyijsf3j+sWvYtyaghDHaFHRo48
 Ap4flzMUqNk0421/SO6YlarmETgB88Ajub0CzItNt3y7SfDVZXty3oX5XyhvUpMeHd
 uUl3umrmGD3qWc8JWD21vbj3gM9hDbBY49McVAwhJOraX6mp3t2FVCY4d1JoGOJTTF
 j4ktdoRstVNqx+h7snM1PoxDuBvCGfDlGFU+YF2JV/wnigZlQ/AuvPOTLkQLek1zJa
 1UkHqc4xBJyrQ==
Date: Wed, 27 Jan 2021 17:42:26 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20210127174226.4d29f454@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210126093533.441338-1-razor@blackwall.org>
References: <20210126093533.441338-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v2 0/2] net: bridge: multicast:
 per-port EHT hosts limit
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

On Tue, 26 Jan 2021 11:35:31 +0200 Nikolay Aleksandrov wrote:
> From: Nikolay Aleksandrov <nikolay@nvidia.com>
> 
> Hi,
> This set adds a simple configurable per-port EHT tracked hosts limit.
> Patch 01 adds a default limit of 512 tracked hosts per-port, since the EHT
> changes are still only in net-next that shouldn't be a problem. Then
> patch 02 adds the ability to configure and retrieve the hosts limit
> and to retrieve the current number of tracked hosts per port.
> Let's be on the safe side and limit the number of tracked hosts by
> default while allowing the user to increase that limit if needed.

Applied, thanks!

I'm curious that you add those per-port sysfs files, is this a matter
of policy for the bridge? Seems a bit like a waste of memory at this
point.
