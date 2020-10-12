Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2BA28B5AF
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 15:13:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8E473214E9;
	Mon, 12 Oct 2020 13:13:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1vd5feBGvOmz; Mon, 12 Oct 2020 13:13:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 6D7F12037B;
	Mon, 12 Oct 2020 13:13:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5A9A2C0051;
	Mon, 12 Oct 2020 13:13:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D117FC0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:13:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C08EC86109
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:13:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pQDmDIqfXfkU for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 13:13:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3633F860FB
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 13:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1602508410; x=1634044410;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/uHY5C97UGg9fIbk/wKP58Fy+ohxLvbrLp3RjXnau48=;
 b=TtJEk/FRENJAgRXzOiXpEYCkwSPAnJkxkq4TOdLyruDSxepb/CtC1u9A
 uuwnLkiHdkX+pq68XFrOpRWQM1gn5HVKiGiBxm9Vivld65GGyxgKSMYRd
 tBF/VmewBeER1nFgAGiH3QUQ2pWvfG078Obk8cFBla6k4kLS/c+DhvBAc
 ftmgZL/shYFpZPuHJdRyFAqleitL2YHEmSyfvWbVnyHH8H1nacvEcVRM0
 bXjRYB6SDkm6CWpisxB04gnTcvfs0CGk6mHUgdmLFYvZwxqFacleBRwTf
 IDH7JUbSA2HSePn+dT114pdYccYMdAejB+KpaP4pf7exd2c9vCLRNHtSE Q==;
IronPort-SDR: SJsfPXhi5E/RWB/+ANmezhdyH1CiejVZgEaHPFFmDpppNaBJL0j3tvhs69yQSBJl09mE0Okl++
 iqazE4UVg7U3qs1/WWXuBmrdR4xbhqCRiXlLsN7k1BUqzqJcyv5fKon05nC0QN5nOlHHOkW7PR
 +73kAs3upoiHsFQWaGiWOKKyvWpsY9bCpRy6kK4jVt7fFZwRWv61nA9+IpB8mkTP6Pjjukyc7f
 3m70Neu9lAVODXn/jOtD50kEZuvmHK+4plaRPkYfaNtzm95UmNOTARf0nCXzT5FarCVtU9ix9S
 32o=
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; d="scan'208";a="95011865"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Oct 2020 06:13:30 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 12 Oct 2020 06:13:30 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Mon, 12 Oct 2020 06:13:30 -0700
Date: Mon, 12 Oct 2020 13:11:44 +0000
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20201012131144.rpqcx2iyt7jjkih3@soft-test08>
References: <20201009143530.2438738-1-henrik.bjoernlund@microchip.com>
 <20201009143530.2438738-6-henrik.bjoernlund@microchip.com>
 <a091e766d38c00ef4d70b3bc003e16dc3747789b.camel@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <a091e766d38c00ef4d70b3bc003e16dc3747789b.camel@nvidia.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 "idosch@mellanox.com" <idosch@mellanox.com>,
 "jiri@mellanox.com" <jiri@mellanox.com>, Roopa Prabhu <roopa@nvidia.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "horatiu.vultur@microchip.com" <horatiu.vultur@microchip.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v4 05/10] bridge: cfm: Kernel space
 implementation of CFM. CCM frame TX added.
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
From: "henrik.bjoernlund--- via Bridge" <bridge@lists.linux-foundation.org>
Reply-To: "henrik.bjoernlund@microchip.com" <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Thanks for the review.

The 10/09/2020 21:49, Nikolay Aleksandrov wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Fri, 2020-10-09 at 14:35 +0000, Henrik Bjoernlund wrote:
> > This is the second commit of the implementation of the CFM protocol
> > according to 802.1Q section 12.14.
> >
> > Functionality is extended with CCM frame transmission.
> >
> > Interface is extended with these functions:
> > br_cfm_cc_rdi_set()
> > br_cfm_cc_ccm_tx()
> > br_cfm_cc_config_set()
> >
> > A MEP Continuity Check feature can be configured by
> > br_cfm_cc_config_set()
> >     The Continuity Check parameters can be configured to be used when
> >     transmitting CCM.
> >
> > A MEP can be configured to start or stop transmission of CCM frames by
> > br_cfm_cc_ccm_tx()
> >     The CCM will be transmitted for a selected period in seconds.
> >     Must call this function before timeout to keep transmission alive.
> >
> > A MEP transmitting CCM can be configured with inserted RDI in PDU by
> > br_cfm_cc_rdi_set()
> >
> > Signed-off-by: Henrik Bjoernlund  <henrik.bjoernlund@microchip.com>
> > Reviewed-by: Horatiu Vultur  <horatiu.vultur@microchip.com>
> > ---
> >  include/uapi/linux/cfm_bridge.h |  39 ++++-
> >  net/bridge/br_cfm.c             | 284 ++++++++++++++++++++++++++++++++
> >  net/bridge/br_private_cfm.h     |  54 ++++++
> >  3 files changed, 376 insertions(+), 1 deletion(-)
> >
> 
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> 

-- 
/Henrik
