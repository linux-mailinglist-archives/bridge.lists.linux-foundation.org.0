Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A606828F136
	for <lists.bridge@lfdr.de>; Thu, 15 Oct 2020 13:28:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB2DE88614;
	Thu, 15 Oct 2020 11:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BUS1hzKc+-gM; Thu, 15 Oct 2020 11:28:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D22E88609;
	Thu, 15 Oct 2020 11:28:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3D4D4C1AD4;
	Thu, 15 Oct 2020 11:28:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2DE74C0051
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2984D885F3
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:28:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U6vEQHbCcRvQ for <bridge@lists.linux-foundation.org>;
 Thu, 15 Oct 2020 11:28:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9FCA8885EB
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1602761311; x=1634297311;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RcZqIHyhK/ws9zYsOyz4fhzkQgVNjCJZMvGu9SsFGQM=;
 b=F1eyBEaJpvZ7+vhxhrETBNvNrGsHWVasvF1BRKglgpVnA2jM3oeIjosh
 JowHqC4SXBeCzefAITblkoD12q21E/daM6CKfaR0ZM6TF662leQwMcvZz
 GeH4Hflp4bMuxYYRycKRTlPclRZVB7wENH5GsUteRNrrOhIrldfDYmop9
 wjyYczHHDGEhlqPfQC57I5gnTsyuZ2vanebdCl+mM9jQ3uAWYx8R7+OMe
 hvHiVXQOfQH2JuuIav+Rak0pLOpvO/RVV/p+f44NbEgpMdoR2GXkqmMtq
 fmqE/vtGZR/7NO053//hbPPHQsAYP6kstd6TyIzq/ASaZWIQHZEcZzSls w==;
IronPort-SDR: Aq3lUfUp8hdvGGkH7tT9+kYC8WhYsL0YY5w9xeczhGbn8PcCnH8D5Sz7cBJaDsOBY1oN9q/Ep7
 oIguHmyHgCZ0iHDWihjNcIHUyslsvtYcmxAGUJF0thuG/QRbUxFDU4/MslQCN+GHitdrpYBa1s
 svynWsyn3mc3pkp+OwQtjGmov/ROaf67T+EYK/73FzNoFOW4pFMZQtyvylresz3RA+RMwxPoNS
 +G4eUehZEgp+nTzYFCNzkV/UqbAIL5tyGeTNQQUqSFvfiR2HVBVnLSPdLMauGhfRDamDNU2reR
 qfw=
X-IronPort-AV: E=Sophos;i="5.77,378,1596524400"; d="scan'208";a="99624467"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Oct 2020 04:28:30 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 15 Oct 2020 04:28:30 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Thu, 15 Oct 2020 04:28:30 -0700
Date: Thu, 15 Oct 2020 11:26:49 +0000
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20201015112649.pzx7q6mwjhrxaiha@soft-test08>
References: <20201012140428.2549163-1-henrik.bjoernlund@microchip.com>
 <20201012140428.2549163-5-henrik.bjoernlund@microchip.com>
 <20201014160042.4967a702@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20201014160042.4967a702@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v5 04/10] bridge: cfm: Kernel space
 implementation of CFM. MEP create/delete.
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
From: Henrik Bjoernlund via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Thanks for your review. Comments below.
Regards
Henrik

The 10/14/2020 16:00, Jakub Kicinski wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Mon, 12 Oct 2020 14:04:22 +0000 Henrik Bjoernlund wrote:
> > with restricted management access to each other<E2><80><99>s equipment.
> 
> Some Unicode funk in this line?

I have changed as requested.

-- 
/Henrik
