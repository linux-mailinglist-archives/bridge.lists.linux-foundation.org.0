Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A6F216A84
	for <lists.bridge@lfdr.de>; Tue,  7 Jul 2020 12:39:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B42C899FE;
	Tue,  7 Jul 2020 10:39:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vWK10fWhdMl4; Tue,  7 Jul 2020 10:39:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 485A1899FF;
	Tue,  7 Jul 2020 10:39:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2959EC016F;
	Tue,  7 Jul 2020 10:39:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CDA53C016F
 for <bridge@lists.linux-foundation.org>; Tue,  7 Jul 2020 10:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BA1F788E36
 for <bridge@lists.linux-foundation.org>; Tue,  7 Jul 2020 10:39:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TWBoA1hVohIy for <bridge@lists.linux-foundation.org>;
 Tue,  7 Jul 2020 10:39:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4471688E2F
 for <bridge@lists.linux-foundation.org>; Tue,  7 Jul 2020 10:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1594118382; x=1625654382;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vyP5ul9oKsyKcotv3JQDPSfPwCoHDgatMb5V6gzJi3U=;
 b=Zphi8+B0Jc18mVQPQ3a0SSz9Cy+hVGXZo8e8/UC76fi8WX1McN9SJm8A
 jFpj1/+75N4LTvudWxMRNs0naBbetUiZBbz/gRMEYfZsvp1m656CDJCuR
 kXqSpyvGdfVCwCoE1zL/cIeoJRqaUX09VujKRIDn2/1ce7FL2FEc7lBGp
 EG6wuKr7QoGerNOTPm31kj+y2HMEcFzOe2a+v/S+Z414PyLZoH3FfMbx0
 lcKApCm0V1UpGKmo0nbZKnKqCxuJzf6l4CWieXwwzYnMlXUPl/Lk0eqVl
 EBFZiPoGiKH3Abz9H0TyExbsabWLR9R4FsMhoBmudfRj2gQMp23ks0uT7 w==;
IronPort-SDR: VTytonoJQ8YRJQemsmG1nj232WAsBk9wtIkiUFGByiEsBK+pfvz+q6Uzt9oJYBDBi7G/NAShoX
 FGnS1Wwi1/9QNiGf2Vras6dNjuOXFZc9zmyKaU5Sb1zvGrKdyb+uSq31G/NSICAKY2LaZnWlv4
 q6kDxz+9AYRlkNgoiJSKAvPzk2J0WaHCkV1RkC694dkws1JAQMUTZZsIPnS0iT81lANOOSI7HK
 Qpp32DvNQQu7+6f8XMr+UTDolR6e7tUErCZpAI8OnPnq04EMpU1MQA7Lp+M4QchqyhL8Hdbaks
 W6I=
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="82813878"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Jul 2020 03:39:41 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 7 Jul 2020 03:39:41 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 7 Jul 2020 03:39:40 -0700
Date: Tue, 7 Jul 2020 12:39:39 +0200
To: David Miller <davem@davemloft.net>
Message-ID: <20200707103939.basybe2a3haweki2@soft-dev3.localdomain>
References: <20200706091842.3324565-1-horatiu.vultur@microchip.com>
 <20200706091842.3324565-3-horatiu.vultur@microchip.com>
 <20200706.122748.828248704525141203.davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20200706.122748.828248704525141203.davem@davemloft.net>
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 nikolay@cumulusnetworks.com, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org
Subject: Re: [Bridge] [PATCH net-next 02/12] bridge: uapi: mrp: Extend MRP
 attributes for MRP interconnect
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

The 07/06/2020 12:27, David Miller wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> From: Horatiu Vultur <horatiu.vultur@microchip.com>
> Date: Mon, 6 Jul 2020 11:18:32 +0200
> 
> > +struct br_mrp_in_state {
> > +     __u16 in_id;
> > +     __u32 in_state;
> > +};
> 
> Put the __u32 first then the __u16.
> 
> > +struct br_mrp_in_role {
> > +     __u16 in_id;
> > +     __u32 ring_id;
> > +     __u32 in_role;
> > +     __u32 i_ifindex;
> > +};
> 
> Likewise.
> 
> > +struct br_mrp_start_in_test {
> > +     __u16 in_id;
> > +     __u32 interval;
> > +     __u32 max_miss;
> > +     __u32 period;
> > +};
> 
> Likewise.
> 
> > +struct br_mrp_in_test_hdr {
> > +     __be16 id;
> > +     __u8 sa[ETH_ALEN];
> > +     __be16 port_role;
> > +     __be16 state;
> > +     __be16 transitions;
> > +     __be32 timestamp;
> > +};
> 
> Likewise.  Put the larger members first.  There is lots of unnecessary
> padding in this structure.

I will do the same here, except for the 'struct br_mrp_in_test_hdr'
because this represents the frame header for InTest frames. And this is
defined in the standard how it has to be. But I will do it for the other
structures.

> 

-- 
/Horatiu
