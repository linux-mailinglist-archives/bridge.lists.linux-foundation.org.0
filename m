Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A438E28F146
	for <lists.bridge@lfdr.de>; Thu, 15 Oct 2020 13:30:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5563B88310;
	Thu, 15 Oct 2020 11:30:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MR80-JEgRq72; Thu, 15 Oct 2020 11:30:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC9BE8848A;
	Thu, 15 Oct 2020 11:30:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CD8B0C0051;
	Thu, 15 Oct 2020 11:30:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9C931C0051
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:30:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 89E9087F89
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cz0+xLUUwwkS for <bridge@lists.linux-foundation.org>;
 Thu, 15 Oct 2020 11:30:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E678C87F87
 for <bridge@lists.linux-foundation.org>; Thu, 15 Oct 2020 11:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1602761403; x=1634297403;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=KQhsyXAMn7AN17uLkcxZ/87dpZXLNz6fwDSYmoiJKHY=;
 b=BxYqeTlg9l0jyp7RBGwaDf+9OoAIfJFlClWJ1Wg2cmfyvKxv8m17HG7Z
 xUv1Ewg7QYALNiVyRJKAayh1glqShxTjgGYV1/9CeXsQOII++FTUcysNF
 LiJgQLZmpaU5jjTsJh1K3dShMiBJSr0i2vUtXgHxZWxDdrbsDwoLCi5n/
 siK4RJ+tR7W2u2Irjp5OI16PLH8Fg2pvBHbyAp+xrEH9d1A6wn8h+wx3D
 sGQuYERSDbcIaeCON8Jd4wLMitBDe+YExDSU1VD9ShzMcHfRLP+91pWg7
 R/YYQXX+L4dr5pMNIn1U1RYmezaNeCzAWKK6hLchN+q5RiaNrNJxvHkg1 g==;
IronPort-SDR: aDj8Gtvpx8gfgHH52gA6xlunJ54HsZMenp7Qxyj78Y1Ihwbgrqz26jaXm/ttUkXYilL4wcHOjn
 /LWNIMRoNIKiE5WFT8MqJGHggMvu6o5D8p/NfZiPde3O2UT2DrPu1SplcHrmnPlcTj09FcvR1s
 R88XE0PjBfIf68MzzB94FqVDDlrEcG9JFK5lhk+CARpH2N4GoqPfp+kuHqzhGYencTyKtcPIA6
 j3OFkoBWjrhjWc1rAvswKhQdfThWb1Q0Aym5Uhu6y0wDq0v69/2NxpqIuAdeRHDKPnJg/fh4tm
 gl4=
X-IronPort-AV: E=Sophos;i="5.77,378,1596524400"; d="scan'208";a="99624733"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Oct 2020 04:30:03 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 15 Oct 2020 04:30:02 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Thu, 15 Oct 2020 04:30:02 -0700
Date: Thu, 15 Oct 2020 11:28:22 +0000
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20201015112822.adfl5kpgffgzi3wg@soft-test08>
References: <20201012140428.2549163-1-henrik.bjoernlund@microchip.com>
 <20201012140428.2549163-7-henrik.bjoernlund@microchip.com>
 <20201014161610.46dd5785@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20201014161610.46dd5785@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
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

The 10/14/2020 16:16, Jakub Kicinski wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Mon, 12 Oct 2020 14:04:24 +0000 Henrik Bjoernlund wrote:
> > +struct br_cfm_status_tlv {
> > +     __u8 type;
> > +     __be16 length;
> > +     __u8 value;
> > +};
> 
> This structure is unused (and likely not what you want, since it will
> have 2 1 byte while unless you mark length as __packed).

I have changed as requested.

-- 
/Henrik
