Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EBD47E691
	for <lists.bridge@lfdr.de>; Thu, 23 Dec 2021 17:59:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81A6B40239;
	Thu, 23 Dec 2021 16:59:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZyyUF_9ijDVi; Thu, 23 Dec 2021 16:59:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id EFF56400D8;
	Thu, 23 Dec 2021 16:59:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 79C78C006E;
	Thu, 23 Dec 2021 16:59:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E44FFC0012
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 16:59:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CCB5F818CD
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 16:59:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xsr4I-ybLdzp for <bridge@lists.linux-foundation.org>;
 Thu, 23 Dec 2021 16:59:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 33767818B5
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 16:59:48 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 73E85B81F7A;
 Thu, 23 Dec 2021 16:59:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F14CAC36AE9;
 Thu, 23 Dec 2021 16:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640278785;
 bh=QPwau80pk3UraYb+vqoVcwXOj+oK0+cKYssBIEF/HoM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=H3py8MAESqwKAXYzesMo4Dyke0NuI8jwgvdGoDpJNVLAXQjgp4zAu48A1LZMywN/3
 obU1dv28auI53r7Zp18vCzsmvxpZ4WIfBju18KthXDrdmNDuz+x7EpqyPlGdakhVRs
 zBSi2UCQBsfcOsRHSqXDX7UjyY+HWHt9+Z3qtzY1YBEaOPOAvjvGyhKI4kfSTR3I0h
 ufalNYdcLXXM8ka8+Y2VGLP37soqBPxpTkIcRgDIDAvreNgtIy2iPnbZL6vHUqBXzo
 T96H43Kfr0RlT3DznY++BW/t9q/YbyxIZ3ffplyFUpmudFIWkMZk1KeuAGDxpKo81J
 D4+v3pOIvyu4A==
Date: Thu, 23 Dec 2021 08:59:44 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Remi Pommarel <repk@triplefau.lt>
Message-ID: <20211223085944.55b43857@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20211223153139.7661-3-repk@triplefau.lt>
References: <20211223153139.7661-1-repk@triplefau.lt>
 <20211223153139.7661-3-repk@triplefau.lt>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Arnd Bergmann <arnd@arndb.de>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net 2/2] net: bridge: Get SIOCGIFBR/SIOCSIFBR
 ioctl working in compat mode
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

On Thu, 23 Dec 2021 16:31:39 +0100 Remi Pommarel wrote:
> In compat mode SIOC{G,S}IFBR ioctls were only supporting
> BRCTL_GET_VERSION returning an artificially version to spur userland
> tool to use SIOCDEVPRIVATE instead. But some userland tools ignore that
> and use SIOC{G,S}IFBR unconditionally as seen with busybox's brctl.
> 
> Example of non working 32-bit brctl with CONFIG_COMPAT=y:
> $ brctl show
> brctl: SIOCGIFBR: Invalid argument
> 
> Example of fixed 32-bit brctl with CONFIG_COMPAT=y:
> $ brctl show
> bridge name     bridge id               STP enabled     interfaces
> br0
> 
> Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> Co-developed-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Since Arnd said this is not supposed to be backported I presume it
should go to net-next?
