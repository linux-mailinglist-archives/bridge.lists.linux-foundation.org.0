Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2E911C0D0
	for <lists.bridge@lfdr.de>; Thu, 12 Dec 2019 00:51:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7EAA386DE7;
	Wed, 11 Dec 2019 23:51:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pixSjHfSa2Nt; Wed, 11 Dec 2019 23:51:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8378386E66;
	Wed, 11 Dec 2019 23:51:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 44181C0881;
	Wed, 11 Dec 2019 23:51:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4D97DC0881
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 23:51:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 394A7886F3
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 23:51:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IVZ7-5fPdRf8 for <bridge@lists.linux-foundation.org>;
 Wed, 11 Dec 2019 23:51:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4202A886E4
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 23:51:21 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id q16so216158plr.10
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 15:51:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kQFxMWNV4rgLBmw4zuw/aZgjr7Z3zb6XFoOJB/+sV9I=;
 b=r1TZS5QMatjWbLH5EaYwA2CYRpw0u9gnsPDXWvyUsCPRiNauT66mOl+3/MS5XLLglo
 Xy9TaK0MndN3MMWdjbsBlZhh7g34/f4luVrSrcs+1klheGOTmk4rSan5FMqYCi7y86OI
 K+YqrMh+WEjGFFrDHV4daw6GN+LNbewJaNLRRLwzEb64UtO9XBaW8Uzq0dtNPDXX2pPR
 yvEIFo+NHxmiwXB9GXh5uxH3CV9sbJtBJXMwZy1bK8JYpgS2Q72atPzzPa265z8qx7JY
 ObB4xKHZmSed0mgzq1oHOiJ6vUIZw1CDcxp5gekJ6l+TgLx2ffES0suL++/43IVZqu23
 U51Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kQFxMWNV4rgLBmw4zuw/aZgjr7Z3zb6XFoOJB/+sV9I=;
 b=IIKFr3R7jF44T2zgwrTykdVRlD6yP/8ij0m9LtcVBYlCcW3tlUBdGoTn7f05/94Ir+
 gL7/86jzo3uIxUipIgcaTRmQ3WRrAhGt/2qURzskCv9NmrQbWRizv85+YSgc/YNp7o3H
 JBZnNMz/zIUIlK3ydYeGn6r9T1idCItYDRB9rNJueKfFHP4Fvxq4CpwUW6gm5mWOgn+k
 pg+PYuNeVUVg3kyBctmInS7T2+u39T9J1CzckSWzV8//dbCBIHdNTZk8h8OoAjPPjQKc
 gohJkaLJUj27XnlK5TboQg3VVGiT5MDWJcTivLtkYE7Ne4fb2lquxAPRWgY4JvyI+4OH
 iDaQ==
X-Gm-Message-State: APjAAAWEyh40Fzb8QTJger17pCEL0Xr+rRoTsDpsmD+O/xzfJFimqUOd
 /fnweYZZlFHPTWQOk8On0rRbwRBQLsU=
X-Google-Smtp-Source: APXvYqyUa7q0yLtfW9aGxFE+qQYWXcdLj+ncDZmXWGuGTutIoSHc//eDxsjQ3jfUumBlpQaJUcqA1g==
X-Received: by 2002:a17:902:8b86:: with SMTP id
 ay6mr6102040plb.223.1576106689937; 
 Wed, 11 Dec 2019 15:24:49 -0800 (PST)
Received: from shemminger-XPS-13-9360 ([167.220.58.27])
 by smtp.gmail.com with ESMTPSA id s196sm4523159pfs.136.2019.12.11.15.24.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 15:24:49 -0800 (PST)
Date: Wed, 11 Dec 2019 15:24:46 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Vivien Didelot <vivien.didelot@gmail.com>
Message-ID: <20191211152446.4334559d@shemminger-XPS-13-9360>
In-Reply-To: <20191210131633.GB1344570@t480s.localdomain>
References: <20191209230522.1255467-1-vivien.didelot@gmail.com>
 <20191209230522.1255467-2-vivien.didelot@gmail.com>
 <20191209161345.5b3e757a@hermes.lan>
 <20191210131633.GB1344570@t480s.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH iproute2 v2] iplink: add support for STP xstats
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

On Tue, 10 Dec 2019 13:16:33 -0500
Vivien Didelot <vivien.didelot@gmail.com> wrote:

> Hi Stephen,
> 
> On Mon, 9 Dec 2019 16:13:45 -0800, Stephen Hemminger <stephen@networkplumber.org> wrote:
> > On Mon,  9 Dec 2019 18:05:22 -0500
> > Vivien Didelot <vivien.didelot@gmail.com> wrote:
> >   
> > > Add support for the BRIDGE_XSTATS_STP xstats, as follow:
> > > 
> > >     # ip link xstats type bridge_slave dev lan5
> > >                         STP BPDU:
> > >                           RX: 0
> > >                           TX: 39
> > >                         STP TCN:
> > >                           RX: 0
> > >                           TX: 0
> > >                         STP Transitions:
> > >                           Blocked: 0
> > >                           Forwarding: 1
> > >                         IGMP queries:
> > >                           RX: v1 0 v2 0 v3 0
> > >                           TX: v1 0 v2 0 v3 0
> > >     ...  
> > 
> > Might I suggest a more concise format:
> > 	STP BPDU:  RX: 0 TX: 39
> > 	STP TCN:   RX: 0 TX:0
> > 	STP Transitions: Blocked: 0 Forwarding: 1
> > ...  
> 
> I don't mind if you prefer this format ;-)

Just trying to reduce the long output. Which is already too long for the xstat as it is.
