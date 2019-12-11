Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 508B211BBFD
	for <lists.bridge@lfdr.de>; Wed, 11 Dec 2019 19:41:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 61A3D2322B;
	Wed, 11 Dec 2019 18:41:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BWiTVeGr4f56; Wed, 11 Dec 2019 18:41:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id E2497232FA;
	Wed, 11 Dec 2019 18:41:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A816BC18DC;
	Wed, 11 Dec 2019 18:41:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4162EC0881
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 18:41:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2C0B7884B9
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 18:41:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ue2nyUiUoES0 for <bridge@lists.linux-foundation.org>;
 Wed, 11 Dec 2019 18:41:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2A2AD8848A
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 18:41:36 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id t9so6164862qvh.13
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 10:41:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :mime-version:content-disposition:content-transfer-encoding;
 bh=QUS5BKSH61f4lKv1hrX3EZ1prXDNxY1nxacn7O67xGg=;
 b=KAxl3K1I5FzMh3XKViZcFfB9EeCf3AgNLlq9zOTdVMCwrHjKa7EWCjZJ+bBwcajfMA
 UIWclJQTkfpLMoXQjHaXmUIA51uhLaq4auOr/EDiJfvYUainah0ecJuFQ0t1S4UiKEDD
 n897e8jEBLwH2TvQcyyLL0fYeEYDI42XMcHJ3IDhsXrDiTFRf8g9LxE/i2Ffqgo9Lz30
 93gZJOPNJHOw01l40eSFt9OZVjLyAQmTZp1p23R4EVVvPkS7uJeNPlvoFly1SsRTv7sl
 CvhlaFCUXI7k5+6R4FeNWHIiGuye+9q0cx02WnxFAKmdQZG+BuMmsMxysutPykgIhTem
 BrbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:mime-version:content-disposition
 :content-transfer-encoding;
 bh=QUS5BKSH61f4lKv1hrX3EZ1prXDNxY1nxacn7O67xGg=;
 b=IttOz/QY0fESMAqG8aInTiRJrPY15mcL0CtHMXLvm1xEUU3sBOj0imdhNgW2EiMhx1
 H2lOHj6UL/tCfyfCz7A3nNZQK4E5KBgrMWaKC5EslThOnYIMEzNrMU+ZfQUWLDkXe40B
 sL8H1V4sjb5nX0MAhT6AJ7PhMzV0BheSJaudXioGmTP1qsyGji5orfgZd9BZBcSHJ/pg
 LhZbK3WmzRuTPkw5yzE2lvvUJt+NHtiF987qDmRIV27HfnQ0W6WpjO/RUi0fzmmlsjVn
 UYSJmFLGcv75jxmo8dZ13/hFSXtgoxy60FtS1tjUf4RdD8rkNb0WQZY1nvGiyrz/EKMG
 ty0Q==
X-Gm-Message-State: APjAAAUESUCSSqGCPC8Pk9NJTuGmBDHeSSGuCufOw3ozef3VHZKPwx1M
 5qMa8S67JFK5JCjMciJGF3g=
X-Google-Smtp-Source: APXvYqybAGoY76aTj5RQJd3vFH0dJvslULeQwYPRVEcNhEQaULWGWCYIBBUBNOdTHVLS66c/GN67Qg==
X-Received: by 2002:a0c:a145:: with SMTP id d63mr4608615qva.120.1576089695195; 
 Wed, 11 Dec 2019 10:41:35 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id o33sm1196818qta.27.2019.12.11.10.41.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:41:34 -0800 (PST)
Date: Wed, 11 Dec 2019 13:41:33 -0500
Message-ID: <20191211134133.GB1587652@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
In-Reply-To: <9f978ee1-08ee-aa57-6e3d-9b68657eeb14@cumulusnetworks.com>
References: <20191210212050.1470909-1-vivien.didelot@gmail.com>
 <0e45fd22-c31b-a9c2-bf87-22c16a60aeb4@gmail.com>
 <9f978ee1-08ee-aa57-6e3d-9b68657eeb14@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, David Ahern <dsahern@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v2] net: bridge: add STP xstats
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

Hi David, Nikolay,

On Wed, 11 Dec 2019 17:42:33 +0200, Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:
> >>  /* Bridge multicast database attributes
> >>   * [MDBA_MDB] = {
> >>   *     [MDBA_MDB_ENTRY] = {
> >> @@ -261,6 +270,7 @@ enum {
> >>  	BRIDGE_XSTATS_UNSPEC,
> >>  	BRIDGE_XSTATS_VLAN,
> >>  	BRIDGE_XSTATS_MCAST,
> >> +	BRIDGE_XSTATS_STP,
> >>  	BRIDGE_XSTATS_PAD,
> >>  	__BRIDGE_XSTATS_MAX
> >>  };
> > 
> > Shouldn't the new entry be appended to the end - after BRIDGE_XSTATS_PAD
> > 
> 
> Oh yes, good catch. That has to be fixed, too.
> 

This I don't get. Why new attributes must come between BRIDGE_XSTATS_PAD
and __BRIDGE_XSTATS_MAX?


Thanks,

	Vivien
