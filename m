Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CD01E8793
	for <lists.bridge@lfdr.de>; Fri, 29 May 2020 21:18:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 08583873F7;
	Fri, 29 May 2020 19:18:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wSGog7hHzxs7; Fri, 29 May 2020 19:18:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D010873DC;
	Fri, 29 May 2020 19:18:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 50122C016F;
	Fri, 29 May 2020 19:18:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9E7DEC016F
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 19:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 83B30873F7
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 19:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KXUJsaweVr5G for <bridge@lists.linux-foundation.org>;
 Fri, 29 May 2020 19:18:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2B781873DC
 for <bridge@lists.linux-foundation.org>; Fri, 29 May 2020 19:18:14 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 861D5207D4;
 Fri, 29 May 2020 19:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590779893;
 bh=vgDSnI+7ypiz1z9yX8VrOTh1GkbhLJZZTXgp3PCi0UI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YNPdyVh2Rx2tMjeDs1WK7/snMQoVXCURWHb8cV872kD8ltBKQUnSNAxdNc1BUn/u7
 W3b2JRZ4+HCLkA+9PiVV1Fhy7VNz2Jd8vQJ94A8N/cbhPGZDeun1sjI0zEo8skGaMz
 yjzqX95r3intpixgnk5qydDy+Q1ttwO2e7UekyhY=
Date: Fri, 29 May 2020 12:18:11 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20200529121811.583003cc@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20200529100514.920537-3-horatiu.vultur@microchip.com>
References: <20200529100514.920537-1-horatiu.vultur@microchip.com>
 <20200529100514.920537-3-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ivecera@redhat.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 2/2] bridge: mrp: Add support for role
	MRA
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

On Fri, 29 May 2020 10:05:14 +0000 Horatiu Vultur wrote:
> A node that has the MRA role, it can behave as MRM or MRC.
> 
> Initially it starts as MRM and sends MRP_Test frames on both ring ports.
> If it detects that there are MRP_Test send by another MRM, then it
> checks if these frames have a lower priority than itself. In this case
> it would send MRP_Nack frames to notify the other node that it needs to
> stop sending MRP_Test frames.
> If it receives a MRP_Nack frame then it stops sending MRP_Test frames
> and starts to behave as a MRC but it would continue to monitor the
> MRP_Test frames send by MRM. If at a point the MRM stops to send
> MRP_Test frames it would get the MRM role and start to send MRP_Test
> frames.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>

net/bridge/br_mrp.c:542:20: warning: cast to restricted __be16
net/bridge/br_mrp.c:542:20: warning: cast to restricted __be16
net/bridge/br_mrp.c:542:20: warning: cast to restricted __be16
net/bridge/br_mrp.c:542:20: warning: cast to restricted __be16
