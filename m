Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A1728F15C
	for <lists.bridge@lfdr.de>; Thu, 15 Oct 2020 13:34:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FCD0882DC;
	Thu, 15 Oct 2020 11:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vQFy-d9zQx32; Thu, 15 Oct 2020 11:34:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C20318827E;
	Thu, 15 Oct 2020 11:34:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B119EC0051;
	Thu, 15 Oct 2020 11:34:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DC7E2C0051
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:34:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CB2E3880FD
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:34:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VV7w8oAnhqmh for <bridge@lists.linux-foundation.org>;
 Thu, 15 Oct 2020 11:34:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1A8D287C78
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1602761658; x=1634297658;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=K5125LgfPLC5YBwpxAqbylzaGWeeFwuMFZBxHzf/rTw=;
 b=wkbhup4g577GBy+0njTbZ8q3fUUi6A2O8CVaXcFBhXpaqDVQcxsX5lCd
 RMIefncKby14pW+aA5sXLGOcWW3FsNO6nGmpefn4aDnrjbGS+bhsQve5b
 4Ppo4Mr/vXi7cKQrnQn25NqyZrj88yiibTWv42cMo1G41Hbls2Z5hc9OX
 I7Zil2JSgfghSnfbCvTIj5tyY/LSjnuBoIRJM2mC36l3zLQP9FnH+Ndd4
 TojOd9hjiVblU4o/b9KmiuOx8rBa4o0YZGL6DQ5LAMvb7qMj8Cf/euxFP
 W7ZYGJPqJrPKl2P9peUaKdVpFGjbtDaNSrlqPGWy5CSVc3ZUEhu+paTps A==;
IronPort-SDR: silQg3D64j1zcpKN82/PLWHWwCF4ekn8C/wv8sZGx2x9JRF6qfuKmUb5leQtBeH/ltt6oklf+0
 N/9WE4F1CDSkphzciApwDqc2YTUehlIw6asLkit9bNDvDbIVVDfqyCF22MJLju1yJ6DxPpPLPd
 qhKnnLYfhbxpcObemiO52iFV7ieShceVAXNUdhhCu57wnQZDRWCPWwy2/I7kkhcQNPBgz6FvKb
 uO86zTUoG8aPv2sGpN+KDqN8IiaeXMp3Q81RSU1W1pOlxtN8QVi9Na7rctYjRTPOdA37bWJ1w1
 d8Q=
X-IronPort-AV: E=Sophos;i="5.77,378,1596524400"; d="scan'208";a="29986693"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Oct 2020 04:34:17 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 15 Oct 2020 04:34:16 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Thu, 15 Oct 2020 04:34:16 -0700
Date: Thu, 15 Oct 2020 11:32:36 +0000
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20201015113236.iubkh5brahbkttio@soft-test08>
References: <20201012140428.2549163-1-henrik.bjoernlund@microchip.com>
 <20201014155847.2eb150f5@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201014155847.2eb150f5@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 idosch@mellanox.com, jiri@mellanox.com, nikolay@nvidia.com, roopa@nvidia.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v5 00/10] net: bridge: cfm: Add
 support for Connectivity Fault Management(CFM)
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

The 10/14/2020 15:58, Jakub Kicinski wrote:> 
> On Mon, 12 Oct 2020 14:04:18 +0000 Henrik Bjoernlund wrote:
> > Connectivity Fault Management (CFM) is defined in 802.1Q section 12.14.
> >
> > Connectivity Fault Management (CFM) comprises capabilities for detecting, verifying,
> > and isolating connectivity failures in Virtual Bridged Networks.
> > These capabilities can be used in networks operated by multiple independent organizations,
> > each with restricted management access to each other’s equipment.
> 
> Please wrap the cover letter and commit messages to 70 chars.
> 

I will do that,

> > Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
> > Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
> 
> You have two spaces after the name in many tags.

I will change as requested.

-- 
/Henrik
