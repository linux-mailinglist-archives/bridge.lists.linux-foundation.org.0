Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F62116052A
	for <lists.bridge@lfdr.de>; Sun, 16 Feb 2020 18:47:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C33258507B;
	Sun, 16 Feb 2020 17:47:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K+yYGS4adBcs; Sun, 16 Feb 2020 17:47:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A0F385C92;
	Sun, 16 Feb 2020 17:47:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 52568C013E;
	Sun, 16 Feb 2020 17:47:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A04DBC013E
 for <bridge@lists.linux-foundation.org>; Sun, 16 Feb 2020 17:47:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 96B8F84DCD
 for <bridge@lists.linux-foundation.org>; Sun, 16 Feb 2020 17:47:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ejurQLdHRqDw for <bridge@lists.linux-foundation.org>;
 Sun, 16 Feb 2020 17:47:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
 [209.85.215.169])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D3FB18507B
 for <bridge@lists.linux-foundation.org>; Sun, 16 Feb 2020 17:47:15 +0000 (UTC)
Received: by mail-pg1-f169.google.com with SMTP id w21so7802440pgl.9
 for <bridge@lists.linux-foundation.org>; Sun, 16 Feb 2020 09:47:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LyKSxUlVMA95fPCFzLoOEQ63e1Qi+u1GuBh6ef/TJGg=;
 b=K5Txdhbci90g/30K8mIH4x9gZRVVcsRJlHL0y4BjYQ8X2UsnU8afyZtFaX07h4fK1T
 rJQhNVqjUIj9vgbee/PXGzr45P50YE8B3p+8B6pbzHv50ya7dkGDVik+6GVT581GBuJg
 VRLUsVMvhbwDhueWSWC50kLnCz3Pbd/46ZZuW1gf2uWEx1Gg1JYcoBxqFIt3vu7RRzjn
 vf+fiTh2BHdRksElcIdRfDbwS9doGE3utA1mJ3HRMwFsTnulZCaV34MAlpi6A02P08vA
 QiUGKpRZqMukH5ZFcZRwbMzmKIhQnbcJc9zMVkYvi4ssJl97SSm8/G4FLOQj76aViAHy
 IFow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LyKSxUlVMA95fPCFzLoOEQ63e1Qi+u1GuBh6ef/TJGg=;
 b=NONQM1L2QeeVCgz9eGJ9Zb4TX5XGDi0XVuZwWbrfeqFkt/lqCkj2kpNEl9l191sDPf
 U3S+9KemZdbEDHDs2fzfiDHyc44pxHggmdN3ZktKvbw2KpBnvBubHGFvxBaV22mlmveS
 c5d8OJ6/5e0jdAM5Auwl4HWRk9xoAuClThtPnzJRQQ8qMo7b+43xMDEbYzLh8qDrckte
 9a4Gh0wIXB+MzYnybVfm35dthlW7LU70LlQxvj/VXKOl6hs1SSvvr2bGpeoZRG6EeQf6
 nCH36mP/ouM1GOz/2FRgD8A08/lErQH8/4ab4UlYETHjhshoGWR7+g/a0Pk2rARtjT87
 qctg==
X-Gm-Message-State: APjAAAVok5cueEMd5fp/rxOv0i4754y98EONsNmXkLcJ2TfyLCMF9/dv
 XD+DV9k8tDe5y+qOKipTbOGUKQ==
X-Google-Smtp-Source: APXvYqypqM3xV+qkSKrS8iShGLsJwENr4Z40sbKZ7eqfI+Aym92H2G+4IDzUQUbiXTkCyXiD0YElXw==
X-Received: by 2002:a65:6718:: with SMTP id u24mr14089708pgf.289.1581875235340; 
 Sun, 16 Feb 2020 09:47:15 -0800 (PST)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id k8sm14012936pgg.18.2020.02.16.09.47.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 09:47:15 -0800 (PST)
Date: Sun, 16 Feb 2020 09:47:07 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Marcel Waldvogel <marcel.waldvogel@uni-konstanz.de>
Message-ID: <20200216094707.165f85bc@hermes.lan>
In-Reply-To: <bce2e3fb5e6061a926250b942a958f992b0d85bc.camel@uni-konstanz.de>
References: <bce2e3fb5e6061a926250b942a958f992b0d85bc.camel@uni-konstanz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: bridge@lists.linux-foundation.org
Subject: Re: [Bridge] Support for long interface names
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

On Mon, 10 Feb 2020 16:00:49 +0100
Marcel Waldvogel <marcel.waldvogel@uni-konstanz.de> wrote:

> Hi,
> I've added support for long bridge interface names (such as"br-
> 0081a64f416f") to "brctl show" (long physical interface names arenot a
> problem there).
> Please find a branch with the commit at 
> https://github.com/MarcelWaldvogel/bridge-utils/tree/long-ifnames
> 
> -Marcel

Thanks but I have no plans to add any new features to bridge-utils.
Just like ifconfig, users should migrate to the new bridge command
in iproute2.
