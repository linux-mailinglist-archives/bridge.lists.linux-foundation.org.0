Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1752643CBC5
	for <lists.bridge@lfdr.de>; Wed, 27 Oct 2021 16:15:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98F49404E2;
	Wed, 27 Oct 2021 14:14:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kpV8G7OnCRlP; Wed, 27 Oct 2021 14:14:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 41B81404DE;
	Wed, 27 Oct 2021 14:14:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0B201C0036;
	Wed, 27 Oct 2021 14:14:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 42BD6C000E
 for <bridge@lists.linux-foundation.org>; Wed, 27 Oct 2021 14:14:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 315B5607F0
 for <bridge@lists.linux-foundation.org>; Wed, 27 Oct 2021 14:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E0ZASEpVZScV for <bridge@lists.linux-foundation.org>;
 Wed, 27 Oct 2021 14:14:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 83533607AF
 for <bridge@lists.linux-foundation.org>; Wed, 27 Oct 2021 14:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635344094;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hJrML/RRrYOCcLcaDpLc5DyYFDVAJz2ir0815yDh2Js=;
 b=JaRW1soB9llkss5+C2fIC7esGFk1ATY6gC1dte8XyM/aZmz959zzDbTcsAIwBmsTvYkACY
 110YpoGCeMUz1L7+UoCDguQWVsiHSdoypdKA7Jn9HQAhCAmZ8WVRWo9d0maNzvGrsUN7mG
 FmgOUJqjcF5S+LKmCe1UMs8F/+eD9RE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-504-AyFWpsHFNxWvgDJNk17mcw-1; Wed, 27 Oct 2021 10:14:51 -0400
X-MC-Unique: AyFWpsHFNxWvgDJNk17mcw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3DAFF1129581;
 Wed, 27 Oct 2021 14:14:49 +0000 (UTC)
Received: from ceranb (unknown [10.40.193.230])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0781419D9F;
 Wed, 27 Oct 2021 14:14:46 +0000 (UTC)
Date: Wed, 27 Oct 2021 16:14:40 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20211027161440.00cb1107@ceranb>
In-Reply-To: <a9b7d8d2-da03-42f0-bd16-3446cdcaecc8@nvidia.com>
References: <20211027134926.1412459-1-ivecera@redhat.com>
 <a9b7d8d2-da03-42f0-bd16-3446cdcaecc8@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Cc: netdev@vger.kernel.org,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 open list <linux-kernel@vger.kernel.org>, "David S.
 Miller" <davem@davemloft.net>,
 Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] [PATCH net] net: bridge: fix uninitialized variables
 when BRIDGE_CFM is disabled
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

On Wed, 27 Oct 2021 16:54:39 +0300
Nikolay Aleksandrov <nikolay@nvidia.com> wrote:

> On 27/10/2021 16:49, Ivan Vecera wrote:
> > Function br_get_link_af_size_filtered() calls br_cfm_{,peer}_mep_count()
> > but does not check their return value. When BRIDGE_CFM is not enabled
> > these functions return -EOPNOTSUPP but do not modify count parameter.
> > Calling function then works with uninitialized variables.
> > 
> > Fixes: b6d0425b816e ("bridge: cfm: Netlink Notifications.")
> > Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> > ---
> >  net/bridge/br_netlink.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> > index 5c6c4305ed23..12d602495ea0 100644
> > --- a/net/bridge/br_netlink.c
> > +++ b/net/bridge/br_netlink.c
> > @@ -126,8 +126,10 @@ static size_t br_get_link_af_size_filtered(const struct net_device *dev,
> >  		return vinfo_sz;
> >  
> >  	/* CFM status info must be added */
> > -	br_cfm_mep_count(br, &num_cfm_mep_infos);
> > -	br_cfm_peer_mep_count(br, &num_cfm_peer_mep_infos);
> > +	if (br_cfm_mep_count(br, &num_cfm_mep_infos) < 0)
> > +		num_cfm_mep_infos = 0;
> > +	if (br_cfm_peer_mep_count(br, &num_cfm_peer_mep_infos) < 0)
> > +		num_cfm_peer_mep_infos = 0;
> >  
> >  	vinfo_sz += nla_total_size(0);	/* IFLA_BRIDGE_CFM */
> >  	/* For each status struct the MEP instance (u32) is added */
> >   
> 
> Hi,
> Could you please rather update the EOPNOTSUPP helpers to set these infos to 0 before
> returning? Someone else might decide to use them and hit the same bug.
> 
> E.g.
> static inline int br_cfm_mep_count(struct net_bridge *br, u32 *count)
> {
> 	*count = 0;
>         return -EOPNOTSUPP;
> }
> 
> We already do the same for br_allowed_ingress, nbp_vlan_add() etc.
> 
> Thanks,
>  Nik
> 

Ok, Nik... works for me.

Thanks,
Ivan

