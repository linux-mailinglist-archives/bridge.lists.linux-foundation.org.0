Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6346B4DB04C
	for <lists.bridge@lfdr.de>; Wed, 16 Mar 2022 14:03:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24D2E8430A;
	Wed, 16 Mar 2022 13:03:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ztqVUvNwFGOW; Wed, 16 Mar 2022 13:03:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9E4188430F;
	Wed, 16 Mar 2022 13:03:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4E8A1C000B;
	Wed, 16 Mar 2022 13:03:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C18F0C000B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 13:03:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9771D84306
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 13:03:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wnz5rR8WA5o3 for <bridge@lists.linux-foundation.org>;
 Wed, 16 Mar 2022 13:03:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 546B2842E9
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 13:03:01 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id z92so1658965ede.13
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 06:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8ZZlmqC5VFB+TpGNzx3hi7Wlj0HQtNbpALYNMUhypww=;
 b=nIgBjOLQD1J7QK6kKh4kQuZuvR0bB1+otQ7TZDdrnqTfUYfWIMdVfMIcC+ia9FYnEl
 fUD5UAEae9GmQjkitTfcBXsqeF8XkckgfF+k6esCH2FqSv1QhiY94QJLTI/ajXmcVzbN
 9s2oGAgYu5IJ7CkD265nYF8+WiusP4qqMH9zZYLg0v+kbIYPKHtaGXuZsO9BImtR16CZ
 HZn3hc6vsGf0z8GuqmhW/7UAE/bxoN5KGlod0MLxnIcXQhp/0wdJMn0S9loIjGUuZTqF
 l06zo9FUxvqHhLSN3Suk3R58+sRQL1zxvKN4VIZlPQ/HM4zrIiSaR8tuk+4/f6P8ORej
 YvZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8ZZlmqC5VFB+TpGNzx3hi7Wlj0HQtNbpALYNMUhypww=;
 b=ruI+Q8Jnr7AJBvqzMqAZIlj/7++bs4l1cjGJYbEWTi0UITS9Hh+GWtf/NYLFHrqqgi
 1jtUyznVw+wU55DdW9mtza07WCgcAvLqg/BpnQl1gn4u2DHZ+Tjcy034MlwphfOPNXfI
 +0iIDZBkPDO051osebIBC0NisTDgc9csKpEOm1bj7skdt6O/bVNJTUryuaOG8BHG55eE
 KPfOHdDMcxIK2R0zkJaLkx65kzX7uQcVzzAjtPVsTxqBoSDkfdNsUK2NaxD/SqzoUlKu
 Sy0TwIWPWyllc7vUIIL/zv7SPN16xuYsLtLT3/D04jIQlbguRgQ68ubqVN1g1DFzsUhO
 F9Mw==
X-Gm-Message-State: AOAM532QS+qy+Zk89pZ7ITkYqB0EOzonvzUcl2wn54zYy/v42Jqk3EWu
 6oVIdyxT/cni9rELjRjld5g=
X-Google-Smtp-Source: ABdhPJzDp8H7SW9lX38fWe1TT+2GmLDXpwQcg209L91LhbTch2/JUjZJFZVaK3BbcRAAtTdEmqeOQg==
X-Received: by 2002:aa7:cc82:0:b0:410:d2b0:1a07 with SMTP id
 p2-20020aa7cc82000000b00410d2b01a07mr30100562edt.359.1647435779143; 
 Wed, 16 Mar 2022 06:02:59 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 k7-20020aa7c047000000b004132d3b60aasm931534edo.78.2022.03.16.06.02.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 06:02:58 -0700 (PDT)
Date: Wed, 16 Mar 2022 15:02:56 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220316130256.3hgbllxioz4igxen@skbuf>
References: <20220315002543.190587-1-tobias@waldekranz.com>
 <20220315002543.190587-13-tobias@waldekranz.com>
 <20220315164249.sjgi6wbdpgehc6m6@skbuf>
 <87zglqjkmk.fsf@waldekranz.com> <87wngujkdm.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87wngujkdm.fsf@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v4 net-next 12/15] net: dsa: Handle MST state
	changes
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

On Wed, Mar 16, 2022 at 10:51:17AM +0100, Tobias Waldekranz wrote:
> > Question though:
> >
> >>> +			err = dsa_port_msti_fast_age(dp, state->msti);
> >
> > If _msti_fast_age returns an error here, do we want that to bubble up to
> > the bridge? It seems more important to keep the bridge in sync with the
> > hardware. I.e. the hardware state has already been successfully synced,
> > we just weren't able to flush all VLANs for some reason. We could revert
> > the state I guess, but what if that fails?
> >
> > Should we settle for a log message?
> 
> Or should we set the extack message? Similar to how we report software
> fallback of bridging/LAGs?

A warning extack and chug along sounds great. The worst that can happen
if flushing a VLAN's FDB fails is that the topology will reconverge slower.
