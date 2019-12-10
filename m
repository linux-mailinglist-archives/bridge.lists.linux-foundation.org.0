Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48465118F99
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 19:16:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B34A08793D;
	Tue, 10 Dec 2019 18:16:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3AKbk1kRLtDJ; Tue, 10 Dec 2019 18:16:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5CECC87916;
	Tue, 10 Dec 2019 18:16:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3C286C1796;
	Tue, 10 Dec 2019 18:16:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8E3CDC0881
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 18:16:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 79A5722731
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 18:16:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5N2ewtvSxDBl for <bridge@lists.linux-foundation.org>;
 Tue, 10 Dec 2019 18:16:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by silver.osuosl.org (Postfix) with ESMTPS id F2D132046D
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 18:16:40 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id d202so17263517qkb.1
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 10:16:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :mime-version:content-disposition:content-transfer-encoding;
 bh=Js+t/imDnAhNiv+s8X3Rf/niWKTG1Cd0eo7I2V5WDgA=;
 b=sPHsMOc88EUoOe/hcIbbxqxMairaW0tiKYqf0W1UhlZNzVRiSjC9z3hJD9lvr2HnZd
 wvtedcSIYZHca7riIAsF2f0XNQ5CmsboZmTTmvCcW2sEGyiAe5XFdFjrxjGDFSAllcbK
 JgXxoM6nLcuIQI0XvL9zhzG1ZmSx6DSnMjjvhsxWAxqkG7f4qdwFuZ7PNHhwcf089JgA
 Iomz230rH6ei8HFpsXXvzughInlwaH1Rr6/7saAFeKuIiTQYhuodD+filjvmkvjvgJ3U
 ENdRRMd9TaYXBEMwxL6tUTI23+6oVnwNwxcHqPM+xcJhHKKmY02nm0J36+efLQw40IUG
 BpTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:mime-version:content-disposition
 :content-transfer-encoding;
 bh=Js+t/imDnAhNiv+s8X3Rf/niWKTG1Cd0eo7I2V5WDgA=;
 b=FxhxVBoqzOpaZWh0dPiyHo29gYuAboh0WGBD6sou8dzNQgxFLPVSoiNfWJXX/Lj7Ot
 FLkf1sTjcLsCYw5AJpUMuetfHDjX8N2kPtd9LEKrR8EqdWnatyPi2sYwcL3LnPGZOj1A
 2qMMvHetTmXETqS1C8kOuAzNAnn6Zur4i1QNZbDk5trZziNOrQiRZ6tHjxwRhMkAU0ym
 DvnfOOuFgOQ2VIHodMybdjbbm2eV8ILWYFTnFZLEaIw0R6N96UmOO4OCKGtogwZe5q0j
 qKfAjCCVZsfY3S8mfe75BKYOSD0SouHkDnEq7CkipPlnjk937EXlUTZfyGrv1cj5Pm8S
 EKJg==
X-Gm-Message-State: APjAAAWOOTbXVpA5n3ujCoxW7+86/pIH2bfzAflKtmW2UlnEMmsDKKRp
 Lm8Pt9RgtWTtH0+nJlF+vTc=
X-Google-Smtp-Source: APXvYqwpkDh+vDXn+8s0scyroCk31thpaMR68T54lWKcjxn6wrW2TJy74i1kIXSn4LhIFx+6DxxpVw==
X-Received: by 2002:a37:7bc7:: with SMTP id w190mr5690067qkc.391.1576001799963; 
 Tue, 10 Dec 2019 10:16:39 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id x16sm1143414qki.110.2019.12.10.10.16.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 10:16:35 -0800 (PST)
Date: Tue, 10 Dec 2019 13:16:33 -0500
Message-ID: <20191210131633.GB1344570@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
To: Stephen Hemminger <stephen@networkplumber.org>
In-Reply-To: <20191209161345.5b3e757a@hermes.lan>
References: <20191209230522.1255467-1-vivien.didelot@gmail.com>
 <20191209230522.1255467-2-vivien.didelot@gmail.com>
 <20191209161345.5b3e757a@hermes.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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

Hi Stephen,

On Mon, 9 Dec 2019 16:13:45 -0800, Stephen Hemminger <stephen@networkplumber.org> wrote:
> On Mon,  9 Dec 2019 18:05:22 -0500
> Vivien Didelot <vivien.didelot@gmail.com> wrote:
> 
> > Add support for the BRIDGE_XSTATS_STP xstats, as follow:
> > 
> >     # ip link xstats type bridge_slave dev lan5
> >                         STP BPDU:
> >                           RX: 0
> >                           TX: 39
> >                         STP TCN:
> >                           RX: 0
> >                           TX: 0
> >                         STP Transitions:
> >                           Blocked: 0
> >                           Forwarding: 1
> >                         IGMP queries:
> >                           RX: v1 0 v2 0 v3 0
> >                           TX: v1 0 v2 0 v3 0
> >     ...
> 
> Might I suggest a more concise format:
> 	STP BPDU:  RX: 0 TX: 39
> 	STP TCN:   RX: 0 TX:0
> 	STP Transitions: Blocked: 0 Forwarding: 1
> ...

I don't mind if you prefer this format ;-)
