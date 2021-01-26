Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBE9303E9B
	for <lists.bridge@lfdr.de>; Tue, 26 Jan 2021 14:26:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A0A685593;
	Tue, 26 Jan 2021 13:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A1QyrV3w56jB; Tue, 26 Jan 2021 13:26:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 936D4855BE;
	Tue, 26 Jan 2021 13:26:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6BC0BC013A;
	Tue, 26 Jan 2021 13:26:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 38C81C013A
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 13:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3456D85593
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 13:26:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z8tyB5iseKFz for <bridge@lists.linux-foundation.org>;
 Tue, 26 Jan 2021 13:26:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
 [209.85.210.172])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 77B6185585
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 13:26:14 +0000 (UTC)
Received: by mail-pf1-f172.google.com with SMTP id j12so10392177pfj.12
 for <bridge@lists.linux-foundation.org>; Tue, 26 Jan 2021 05:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=X8M8LJ/VjAQ/QapUe2kEh2T61Txfu0mjI6Ncwvji/q0=;
 b=NAd9v4IEaNHvQGiKMzECVbgNGDt+yNVjxAhFfBUcd9K6egu+MaCLgVRO9ZquBsNd1A
 fgNWeruQa4oD5LhHnTfK/GR2qICzvBkHyQ6cuhknYnu5lWRYWWWRlC/2Yqy5zxSIyuQk
 t7ujVIgCCANOYikVPH/gOCPuabbQlDFsoU1Fg8b/73Vt675HvSyp2qctB05vCmIYxQ3l
 /ctguYfJg4oXdHdTN0MelJxCXRyz5EC1sEpVMYIg49I8DMEwP+gfK1abMfbTQNUfExA2
 pgtHxupCpltSSSbF2IwHRVvoWdF/uzQbnNO+FEnV/RNjUaQOy+9TsJBQb9Ano5NF4S7U
 JaCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=X8M8LJ/VjAQ/QapUe2kEh2T61Txfu0mjI6Ncwvji/q0=;
 b=mhNYIrOXd81p7Q+VX3KTYqFA/WupTjCqZ2H8Jwul6tG01DjfqGEgt9IHQyTMMw0HAV
 iZfFMZ6+0etwHvSDWP5D9527QnOSeagqUZOG27issf+xUE6eijknaRlJORQ2sEdD84Kg
 qpp01VD8ol+Q/cEM/MaRvUwKDruF4MXOJuJtQcfn/pYylDSdqklCxkLcpEzBGxwBUhge
 6WwX1suYw5ZWlICmqOymoUxqOYp7aEY0yZyvaE31chdfwaVh5KDFV2RBu9nOrQY/KgWt
 ja6CnrAeDb4/5IcLyRIUlgW5JXP6cLN+DfrFZS60GIaEfhRLv72Qgkrl0d/aMEmR8n1/
 /lmg==
X-Gm-Message-State: AOAM530decouiQSKFJS4Q0c9atGpjpFUr19rFPkBwXdFBvSeVBZ9TN6g
 Y5kBwyzUNDEN5Cr9+6+ekms=
X-Google-Smtp-Source: ABdhPJw1+E/WjUvVREAAdiEFP+LHxnbmvflWdTyQmmC8C01ZBnscYvCpovXfCuG3JROrnXN3p8BT9w==
X-Received: by 2002:a62:1b47:0:b029:1ba:7a85:cdff with SMTP id
 b68-20020a621b470000b02901ba7a85cdffmr5240910pfb.22.1611667574078; 
 Tue, 26 Jan 2021 05:26:14 -0800 (PST)
Received: from Leo-laptop-t470s ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id x26sm12870575pfi.176.2021.01.26.05.26.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 05:26:13 -0800 (PST)
Date: Tue, 26 Jan 2021 21:25:26 +0800
From: Hangbin Liu <liuhangbin@gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20210126132448.GN1421720@Leo-laptop-t470s>
References: <20210126040949.3130937-1-liuhangbin@gmail.com>
 <8a34f089-204f-aeb1-afc7-26ccc06419eb@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8a34f089-204f-aeb1-afc7-26ccc06419eb@nvidia.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Jarod Wilson <jarod@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] bridge: Propagate NETDEV_NOTIFY_PEERS
	notifier
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

On Tue, Jan 26, 2021 at 09:40:13AM +0200, Nikolay Aleksandrov wrote:
> On 26/01/2021 06:09, Hangbin Liu wrote:
> > After adding bridge as upper layer of bond/team, we usually clean up the
> > IP address on bond/team and set it on bridge. When there is a failover,
> > bond/team will not send gratuitous ARP since it has no IP address.
> > Then the down layer(e.g. VM tap dev) of bridge will not able to receive
> > this notification.
> > 
> > Make bridge to be able to handle NETDEV_NOTIFY_PEERS notifier.
> > 
> > Signed-off-by: Hangbin Liu <liuhangbin@gmail.com>
> > ---
> >  net/bridge/br.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/net/bridge/br.c b/net/bridge/br.c
> > index ef743f94254d..b6a0921bb498 100644
> > --- a/net/bridge/br.c
> > +++ b/net/bridge/br.c
> > @@ -125,6 +125,7 @@ static int br_device_event(struct notifier_block *unused, unsigned long event, v
> >  		/* Forbid underlying device to change its type. */
> >  		return NOTIFY_BAD;
> >  
> > +	case NETDEV_NOTIFY_PEERS:
> >  	case NETDEV_RESEND_IGMP:
> >  		/* Propagate to master device */
> >  		call_netdevice_notifiers(event, br->dev);
> > 
> 
> I'm not convinced this should be done by the bridge, setups usually have multiple ports
> which may have link change events and these events are unrelated, i.e. we shouldn't generate
> a gratuitous arp for all every time, there might be many different devices present. We have
> setups with hundreds of ports which are mixed types of devices.
> That seems inefficient, redundant and can potentially cause problems.

Hi Nikolay,

Thanks for the reply. There are a few reasons I think the bridge should
handle NETDEV_NOTIFY_PEERS:

1. Only a few devices will call NETDEV_NOTIFY_PEERS notifier: bond, team,
   virtio, xen, 6lowpan. There should have no much notification message.
2. When set bond/team's upper layer to bridge. The bridge's mac will be the
   same with bond/team. So when the bond/team's mac changed, the bridge's mac
   will also change. So bridge should send a GARP to notify other's that it's
   mac has changed.
3. There already has NETDEV_RESEND_IGMP handling in bridge, which is also
   generated by bond/team and netdev_notify_peers(). So why there is IGMP
   but no ARP?
4. If bridge doesn't have IP address, it will omit GARP sending. So having
   or not having IP address on bridge doesn't matters.
4. I don't see why how many ports affect the bridge sending GARP.

Please correct me if I missed something.

> Also it seems this was proposed few years back: https://lkml.org/lkml/2018/1/6/135

Thanks for this link, cc Stephen for this discuss.

Hangbin
