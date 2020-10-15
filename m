Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCFF28F13B
	for <lists.bridge@lfdr.de>; Thu, 15 Oct 2020 13:29:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 07B15882CA;
	Thu, 15 Oct 2020 11:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4J29eTnen601; Thu, 15 Oct 2020 11:29:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 97C4C882CD;
	Thu, 15 Oct 2020 11:29:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 861C1C0051;
	Thu, 15 Oct 2020 11:29:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9C89BC0051
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:29:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8BD2687F7D
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:29:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CPrjhK53u3Z1 for <bridge@lists.linux-foundation.org>;
 Thu, 15 Oct 2020 11:29:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0CD8C87F5F
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1602761356; x=1634297356;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7EnMnyHDlxSioQWuwItYVnheB1FER3TeFm6RMS/adn4=;
 b=dAcjAu1Y97wQ9r7hbYoJ1/wITFVACk2+YQohuZVgZsnJySDYZQMlWR1I
 s5VmAqRGQuyTsxSI3pW8jQPb4oOyPSo9XbRDrUst2cgrX84x24A3jViXM
 H95mN3iaqmQ84cJhY0JA6+5t3aIWe5m2GnzHoeJ95cGKs5foM03a3WURJ
 ceOSJTqOoYw0PjA47DFswLKsWyBFaCbtLHFE2JFUl1gtcPIwHvrEmjYth
 nAvPyyNSTpif2zBONYRaTSAIl+pqygMbaSDsxqAwtVb00mqTyER6D7oTQ
 oKUREtsBDFr+6LL+xk5RuOyQJuBjf1UEhqUUW+BBsVP/u6hKS0TZwbABX w==;
IronPort-SDR: rqczGmyF/adutI1bxyM8+BL3JcbEmb6ibjJcGJB1ctc1Umys+2Fx0drIfyLLIiC8trUzhBU4pr
 /YwuBwzCmSsLImr34UzFXMMBHy0jtIc+BJox0jZr+C1R5Zj4l2MGFRRlI7WceiwgPvUsU6mun6
 KQGwoGpG++QYtj+4fDOK9WsQKMdawCohy2YUc5j0geuAaCIpl3QscYdU8/5FmwnbdWt+7ZRFNd
 gQj/MuZn/dXpl3WJgxAReUAW9b0CxLMQLLqs9aJVW5lMuPFgZIH57RpBiLHZ214Q5E+O1TOOzs
 0nA=
X-IronPort-AV: E=Sophos;i="5.77,378,1596524400"; d="scan'208";a="99624569"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Oct 2020 04:29:16 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 15 Oct 2020 04:29:16 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Thu, 15 Oct 2020 04:29:15 -0700
Date: Thu, 15 Oct 2020 11:27:35 +0000
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20201015112735.fi2aauhyqt5ahlh2@soft-test08>
References: <20201012140428.2549163-1-henrik.bjoernlund@microchip.com>
 <20201012140428.2549163-7-henrik.bjoernlund@microchip.com>
 <20201014162655.3cbc8664@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20201014162655.3cbc8664@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
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
From: Henrik Bjoernlund via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Thanks for your review. Comments below.
Regards
Henrik

The 10/14/2020 16:26, Jakub Kicinski wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Mon, 12 Oct 2020 14:04:24 +0000 Henrik Bjoernlund wrote:
> > +     /* This CCM related status is based on the latest received CCM PDU. */
> > +     u8 port_tlv_value; /* Port Status TLV value */
> > +     u8 if_tlv_value; /* Interface Status TLV value */
> > +
> > +     /* CCM has not been received for 3.25 intervals */
> > +     bool ccm_defect;
> > +
> > +     /* (RDI == 1) for last received CCM PDU */
> > +     bool rdi;
> > +
> > +     /* Indications that a CCM PDU has been seen. */
> > +     bool seen; /* CCM PDU received */
> > +     bool tlv_seen; /* CCM PDU with TLV received */
> > +     /* CCM PDU with unexpected sequence number received */
> > +     bool seq_unexp_seen;
> 
> Please consider using a u8 bitfield rather than a bunch of bools,
> if any of this structures are expected to have many instances.
> That'd save space.

I have changed as requested.

-- 
/Henrik
