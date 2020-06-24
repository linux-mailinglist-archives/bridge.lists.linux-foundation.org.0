Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B92A20721D
	for <lists.bridge@lfdr.de>; Wed, 24 Jun 2020 13:32:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C5BC287E8E;
	Wed, 24 Jun 2020 11:32:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m-RaE-naBZGg; Wed, 24 Jun 2020 11:32:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25C4F87D80;
	Wed, 24 Jun 2020 11:32:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DCD73C016F;
	Wed, 24 Jun 2020 11:32:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 23E7FC016F
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 11:32:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 08C0021FA8
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 11:32:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qa-oy12E3aMG for <bridge@lists.linux-foundation.org>;
 Wed, 24 Jun 2020 11:31:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 4821420381
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 11:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592998320; x=1624534320;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ytChrvYAloZwmq/t2qRRQKdJIdRvD5ZigkU1TGR2Ylk=;
 b=ZrftBgW6ozx7zi3Ux+ru8fl+eNvNtoBNtq6iKsMOteqPTpTo5hi7xZlz
 vrqtcmyWJkCo5AUPfBzttRWII4A3S/FWub0jOvfrn9nPPpi8guqAuV7U9
 U6gJUgKI/QL3aEHu1Kz+LsnSeAWRepBkaLvYBQEE9La/zODGZiYs7fbUD
 Ke9rZcpv9M9zdU2sPmlr+F/YEpytfQ4pf4sPKj1aVtF7XBbhukQQkLZmW
 94TWwVMHe6BJwEYd9EPQk9IjPJkHRdtGhA5k6ezxHmlwxbWJBr40dEYSQ
 W7g1Q+LtuQiEZDsSqtpCFlxhiWsmVWaDYl6e1rweivGcZeTmx1BcVYbJg A==;
IronPort-SDR: Otnu5zaWQnGtJeKyFJ4oY4LrHRbzk1keJeICfFcy3n7QvBPhI2tkHpler6TjeFRsQFjTIuLjPC
 rkecIdjwTgPbC8cAWgWHGOXs6mw/g5SasaeFeB0YK4KvfLFJUHEGihqloZ65K7PL/lZxfIr4Fm
 7bxyS1Tz1FAqbTSy9xla2EBe36cvR913P/g+auO53KwNyUsPmLK5fp5p9+7cLZTUyEh/rmkz0t
 pMhLUnLKC5RO9XsCiX/Gj6QjIjxUs4bdhOr9VTfq1BFJjJmRbYk6fflBU2r6/d4GLH6Kz7J1Bn
 sgM=
X-IronPort-AV: E=Sophos;i="5.75,275,1589266800"; d="scan'208";a="80727156"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Jun 2020 04:31:59 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 24 Jun 2020 04:31:57 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Wed, 24 Jun 2020 04:31:57 -0700
Date: Wed, 24 Jun 2020 13:31:56 +0200
To: David Miller <davem@davemloft.net>
Message-ID: <20200624113156.hsutqewk4xntmkld@soft-dev3.localdomain>
References: <20200623090541.2964760-1-horatiu.vultur@microchip.com>
 <20200623.143821.491798381160245817.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20200623.143821.491798381160245817.davem@davemloft.net>
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com, kuba@kernel.org
Subject: Re: [Bridge] [PATCH net v2 0/2] bridge: mrp: Update MRP_PORT_ROLE
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

The 06/23/2020 14:38, David Miller wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> From: Horatiu Vultur <horatiu.vultur@microchip.com>
> Date: Tue, 23 Jun 2020 11:05:39 +0200
> 
> > This patch series does the following:
> > - fixes the enum br_mrp_port_role_type. It removes the port role none(0x2)
> >   because this is in conflict with the standard. The standard defines the
> >   interconnect port role as value 0x2.
> > - adds checks regarding current defined port roles: primary(0x0) and
> >   secondary(0x1).
> >
> > v2:
> >  - add the validation code when setting the port role.
> 
> Series applied, thank you.

Thanks. Will these patches be applied also on net-next?
Because if I start now to add support for the interconnect port, these
patches are needed on net-next. Or do I need to add these patches to the
patch series for the interconnect port?
What is the correct way of doing this?

-- 
/Horatiu
